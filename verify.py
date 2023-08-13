FILENAME = 'student_a64_template.s'
STOP_TOKEN = '.size'
COMMENT_TOKEN = '//'
LABEL_START = '.'
function_names = ['popcntRD', 'BCD_to_long', 'unicode_to_UTF8', 'matrix_transpose', 'ustrncmp', 'gcd_rec', 'tree_traversal', 'pattern_table_update']
valid_instr = ['ldur', 'stur', 'movk', 'movz', 'add', 'adds', 'subs', 'mvn', 'orr', 'eor', 'ands', 'ubfm', 'asr', 'lsl', 'lsr', 'b', 'b.', 'bl', 'ret', 'nop', 'hlt', 'adrp', 'cmp', 'tst']

def verify(lines, fn_name, idx):
    line_num = 0
    for line in lines:
        line_num += 1
        
        line = line.strip().split()
        if len(line) == 0:
            continue
        instr = line[0]
        if (len(instr) >= 2 and instr[:2] == COMMENT_TOKEN) or line_num < idx:
            continue
        if instr == STOP_TOKEN:
            print(f'Function {fn_name} uses only valid chArm v0 instructions.')
            return 1
        if instr not in valid_instr and (len(instr) > 1 and instr[:2] != 'b.') and instr[0] != LABEL_START:
            print(f'Invalid instruction {instr} encountered in function {fn_name}.')
            return 0
        
    print(f'Error encountered when reading function {fn_name}.')
    return 0

if __name__ == '__main__':
    valid_count = []
    lines = None
    with open(FILENAME) as f:
        lines = f.readlines()
    
    line_num = 0
    for line in lines:
        line_num += 1
        fn_name = line.strip()[:-1]
        if fn_name in function_names:
            valid_count.append(verify(lines, fn_name, line_num+1))
    
