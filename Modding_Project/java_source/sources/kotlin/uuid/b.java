package kotlin.uuid;

import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Uuid.kt */
@Metadata
@SourceDebugExtension({"SMAP\nUuid.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Uuid.kt\nkotlin/uuid/UuidKt__UuidKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,452:1\n1#2:453\n*E\n"})
/* loaded from: classes8.dex */
public class b extends a {
    public static final /* synthetic */ void b(String str, int i10) {
        d(str, i10);
    }

    public static final /* synthetic */ void c(long j10, byte[] bArr, int i10, int i11) {
        e(j10, bArr, i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(String str, int i10) {
        if (str.charAt(i10) == '-') {
            return;
        }
        throw new IllegalArgumentException(("Expected '-' (hyphen) at index " + i10 + ", but was '" + str.charAt(i10) + '\'').toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(long j10, byte[] bArr, int i10, int i11) {
        int i12 = i10 + (i11 * 2);
        for (int i13 = 0; i13 < i11; i13++) {
            int i14 = c.d()[(int) (255 & j10)];
            bArr[i12 - 1] = (byte) i14;
            i12 -= 2;
            bArr[i12] = (byte) (i14 >> 8);
            j10 >>= 8;
        }
    }
}
