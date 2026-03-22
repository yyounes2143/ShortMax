package t9;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TextEncoder.java */
/* loaded from: classes5.dex */
public final class l extends c {
    @Override // t9.c
    int c(char c10, StringBuilder sb2) {
        if (c10 == ' ') {
            sb2.append((char) 3);
            return 1;
        } else if (c10 >= '0' && c10 <= '9') {
            sb2.append((char) (c10 - ','));
            return 1;
        } else if (c10 >= 'a' && c10 <= 'z') {
            sb2.append((char) (c10 - 'S'));
            return 1;
        } else if (c10 < ' ') {
            sb2.append((char) 0);
            sb2.append(c10);
            return 2;
        } else if (c10 >= '!' && c10 <= '/') {
            sb2.append((char) 1);
            sb2.append((char) (c10 - '!'));
            return 2;
        } else if (c10 >= ':' && c10 <= '@') {
            sb2.append((char) 1);
            sb2.append((char) (c10 - '+'));
            return 2;
        } else if (c10 >= '[' && c10 <= '_') {
            sb2.append((char) 1);
            sb2.append((char) (c10 - 'E'));
            return 2;
        } else if (c10 == '`') {
            sb2.append((char) 2);
            sb2.append((char) (c10 - '`'));
            return 2;
        } else if (c10 >= 'A' && c10 <= 'Z') {
            sb2.append((char) 2);
            sb2.append((char) (c10 - '@'));
            return 2;
        } else if (c10 >= '{' && c10 <= 127) {
            sb2.append((char) 2);
            sb2.append((char) (c10 - '`'));
            return 2;
        } else {
            sb2.append("\u0001\u001e");
            return c((char) (c10 - 128), sb2) + 2;
        }
    }

    @Override // t9.c
    public int e() {
        return 2;
    }
}
