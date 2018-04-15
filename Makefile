CFLAGS = -Iadd -Isub -O2
OBJDIR = objs
VPATH = add:sub:.
OBJS = main.o
TARGET = main

$(TARGET):$(OBJSDIR) $(OBJS)
	$(CC) -o $(TARGET) $(OBJDIR)/*.o $(CFLAGS)

$(OBJDIR):
	mkdir -p ./$@

$(OBJS):%.o:%.c 
	$(CC) -c $(CFLAGS) $< -o $(OBJDIR)/$@

clean:
	-$(RM) $(TARGET)
	-$(RM) $(OBJDIR)/*.o -r