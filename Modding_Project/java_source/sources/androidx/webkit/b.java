package androidx.webkit;
/* compiled from: R8$$SyntheticClass */
/* loaded from: classes2.dex */
public final /* synthetic */ class b {
    public static /* synthetic */ boolean a(String str) {
        int length = str.length();
        int i10 = 0;
        while (i10 < length) {
            int codePointAt = str.codePointAt(i10);
            if (!Character.isWhitespace(codePointAt)) {
                return false;
            }
            i10 += Character.charCount(codePointAt);
        }
        return true;
    }
}
