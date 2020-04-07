[build-menu]
FT_00_LB=_Compile
FT_00_CM=g++ -std=c++17 -Wshadow -Wall -o "%e" "%f" -O2 -Wno-unused-result 
FT_00_WD=
FT_01_LB=_Build
FT_01_CM=g++ -std=c++17 -Wshadow -Wall -o "%e" "%f" -g -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG
FT_01_WD=
FT_02_LB=_Lint
FT_02_CM=cppcheck --language=c++ --enable=warning,style --template=gcc "%f"
FT_02_WD=
EX_00_LB=_Execute
EX_00_CM="./%e"
EX_00_WD=
