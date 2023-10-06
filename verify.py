FILENAME = 'student_a64_template.s'
AARCH64_TOKENS = ['.arch', '.text', '.align', '.p2align', '.global', '.type', '.size', '.section', '.data']
COMMENT_TOKEN = '//'
LABEL_START = '.'
function_names = ['popcntRD', 'BCD_to_long', 'str_len', 'unicode_to_UTF8', 'gcd_rec', 'gcd_iter']
valid_instr = ['ldur', 'stur', 'movk', 'movz', 'add', 'adds', 'subs', 'mvn', 'orr', 'eor', 'ands', 'ubfm', 'asr', 'lsl', 'lsr', 'b', 'b.', 'bl', 'ret', 'nop', 'hlt']

def verify(lines):
    line_num = 0
    for line in lines:
        line_num += 1
        line = line.strip().split()
        if len(line) == 0:
            continue
        instr = line[0].lower()
        if (len(instr) >= 2 and instr[:2] == COMMENT_TOKEN):
            continue
        if instr in AARCH64_TOKENS:
            continue
        if instr not in valid_instr and (len(instr) > 1 and instr[:2] != 'b.') and instr[0] != LABEL_START and instr[-1] != ':':
            print(f'Invalid instruction {instr} encountered at line {line_num}.')
            return 0
    print(f'The file uses only valid chArm v0 instructions.')
    return 1

if __name__ == '__main__':
    valid_count = []
    lines = None
    with open(FILENAME) as f:
        lines = f.readlines()
    verify(lines)
    
