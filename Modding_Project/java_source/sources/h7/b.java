package h7;
/* compiled from: CharMatcher.java */
/* loaded from: classes5.dex */
public abstract class b implements l<Character> {

    /* compiled from: CharMatcher.java */
    /* loaded from: classes5.dex */
    static abstract class a extends b {
        a() {
        }

        @Override // h7.l
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch2) {
            return super.b(ch2);
        }
    }

    /* compiled from: CharMatcher.java */
    /* renamed from: h7.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    private static final class C0764b extends a {

        /* renamed from: a  reason: collision with root package name */
        private final char f52590a;

        C0764b(char c10) {
            this.f52590a = c10;
        }

        @Override // h7.b
        public boolean e(char c10) {
            if (c10 == this.f52590a) {
                return true;
            }
            return false;
        }

        public String toString() {
            return "CharMatcher.is('" + b.g(this.f52590a) + "')";
        }
    }

    /* compiled from: CharMatcher.java */
    /* loaded from: classes5.dex */
    static abstract class c extends a {

        /* renamed from: a  reason: collision with root package name */
        private final String f52591a;

        c(String str) {
            this.f52591a = (String) k.j(str);
        }

        public final String toString() {
            return this.f52591a;
        }
    }

    /* compiled from: CharMatcher.java */
    /* loaded from: classes5.dex */
    private static final class d extends c {

        /* renamed from: b  reason: collision with root package name */
        static final b f52592b = new d();

        private d() {
            super("CharMatcher.none()");
        }

        @Override // h7.b
        public int c(CharSequence charSequence, int i10) {
            k.l(i10, charSequence.length());
            return -1;
        }

        @Override // h7.b
        public boolean e(char c10) {
            return false;
        }
    }

    protected b() {
    }

    public static b d(char c10) {
        return new C0764b(c10);
    }

    public static b f() {
        return d.f52592b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String g(char c10) {
        char[] cArr = new char[6];
        cArr[0] = '\\';
        cArr[1] = 'u';
        cArr[2] = 0;
        cArr[3] = 0;
        cArr[4] = 0;
        cArr[5] = 0;
        for (int i10 = 0; i10 < 4; i10++) {
            cArr[5 - i10] = "0123456789ABCDEF".charAt(c10 & 15);
            c10 = (char) (c10 >> 4);
        }
        return String.copyValueOf(cArr);
    }

    @Deprecated
    public boolean b(Character ch2) {
        return e(ch2.charValue());
    }

    public int c(CharSequence charSequence, int i10) {
        int length = charSequence.length();
        k.l(i10, length);
        while (i10 < length) {
            if (e(charSequence.charAt(i10))) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public abstract boolean e(char c10);
}
