package wt;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: JsonToStringWriter.kt */
@Metadata
/* loaded from: classes8.dex */
public final class i0 implements z {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private char[] f70305a = j.f70307c.d();

    /* renamed from: b  reason: collision with root package name */
    private int f70306b;

    private final void d(int i10, int i11, String str) {
        int i12;
        int length = str.length();
        while (i10 < length) {
            int f10 = f(i11, 2);
            char charAt = str.charAt(i10);
            if (charAt < x0.a().length) {
                byte b10 = x0.a()[charAt];
                if (b10 == 0) {
                    i12 = f10 + 1;
                    this.f70305a[f10] = charAt;
                } else {
                    if (b10 == 1) {
                        String str2 = x0.b()[charAt];
                        Intrinsics.checkNotNull(str2);
                        int f11 = f(f10, str2.length());
                        str2.getChars(0, str2.length(), this.f70305a, f11);
                        i11 = f11 + str2.length();
                        this.f70306b = i11;
                    } else {
                        char[] cArr = this.f70305a;
                        cArr[f10] = '\\';
                        cArr[f10 + 1] = (char) b10;
                        i11 = f10 + 2;
                        this.f70306b = i11;
                    }
                    i10++;
                }
            } else {
                i12 = f10 + 1;
                this.f70305a[f10] = charAt;
            }
            i11 = i12;
            i10++;
        }
        int f12 = f(i11, 1);
        this.f70305a[f12] = '\"';
        this.f70306b = f12 + 1;
    }

    private final void e(int i10) {
        f(this.f70306b, i10);
    }

    private final int f(int i10, int i11) {
        int i12 = i11 + i10;
        char[] cArr = this.f70305a;
        if (cArr.length <= i12) {
            char[] copyOf = Arrays.copyOf(cArr, kotlin.ranges.e.e(i12, i10 * 2));
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
            this.f70305a = copyOf;
        }
        return i10;
    }

    @Override // wt.z
    public void a(char c10) {
        e(1);
        char[] cArr = this.f70305a;
        int i10 = this.f70306b;
        this.f70306b = i10 + 1;
        cArr[i10] = c10;
    }

    @Override // wt.z
    public void b(@NotNull String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        e(text.length() + 2);
        char[] cArr = this.f70305a;
        int i10 = this.f70306b;
        int i11 = i10 + 1;
        cArr[i10] = '\"';
        int length = text.length();
        text.getChars(0, length, cArr, i11);
        int i12 = length + i11;
        for (int i13 = i11; i13 < i12; i13++) {
            char c10 = cArr[i13];
            if (c10 < x0.a().length && x0.a()[c10] != 0) {
                d(i13 - i11, i13, text);
                return;
            }
        }
        cArr[i12] = '\"';
        this.f70306b = i12 + 1;
    }

    @Override // wt.z
    public void c(@NotNull String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        int length = text.length();
        if (length == 0) {
            return;
        }
        e(length);
        text.getChars(0, text.length(), this.f70305a, this.f70306b);
        this.f70306b += length;
    }

    public void g() {
        j.f70307c.c(this.f70305a);
    }

    @NotNull
    public String toString() {
        return new String(this.f70305a, 0, this.f70306b);
    }

    @Override // wt.z
    public void writeLong(long j10) {
        c(String.valueOf(j10));
    }
}
