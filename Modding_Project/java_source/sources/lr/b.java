package lr;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.Objects;
/* compiled from: VersionRange.java */
/* loaded from: classes8.dex */
public class b {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final a f62297a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final a f62298b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f62299c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f62300d;

    public b(@Nullable a aVar, @Nullable a aVar2, boolean z10, boolean z11) {
        this.f62297a = aVar;
        this.f62298b = aVar2;
        this.f62299c = z10;
        this.f62300d = z11;
    }

    @VisibleForTesting
    static boolean b(@NonNull a aVar, @NonNull a aVar2, boolean z10) {
        if ((z10 && aVar2.c(aVar)) || (!z10 && aVar2.b(aVar))) {
            return true;
        }
        return false;
    }

    @VisibleForTesting
    static boolean c(@NonNull a aVar, @NonNull a aVar2, boolean z10) {
        if ((z10 && aVar2.f(aVar)) || (!z10 && aVar2.e(aVar))) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0047 A[Catch: all -> 0x0066, TryCatch #0 {all -> 0x0066, blocks: (B:5:0x0008, B:11:0x0020, B:17:0x003d, B:19:0x0047, B:21:0x004d, B:23:0x0054, B:16:0x0034, B:10:0x001c), top: B:26:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0054 A[Catch: all -> 0x0066, TRY_LEAVE, TryCatch #0 {all -> 0x0066, blocks: (B:5:0x0008, B:11:0x0020, B:17:0x003d, B:19:0x0047, B:21:0x004d, B:23:0x0054, B:16:0x0034, B:10:0x001c), top: B:26:0x0008 }] */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static lr.b d(@androidx.annotation.NonNull java.lang.String r8) {
        /*
            boolean r0 = android.text.TextUtils.isEmpty(r8)
            r1 = 0
            if (r0 == 0) goto L8
            return r1
        L8:
            java.lang.String r0 = "["
            boolean r0 = r8.startsWith(r0)     // Catch: java.lang.Throwable -> L66
            java.lang.String r2 = "("
            boolean r2 = r8.startsWith(r2)     // Catch: java.lang.Throwable -> L66
            r3 = 1
            if (r0 != 0) goto L1c
            if (r2 == 0) goto L1a
            goto L1c
        L1a:
            r0 = r3
            goto L20
        L1c:
            java.lang.String r8 = r8.substring(r3)     // Catch: java.lang.Throwable -> L66
        L20:
            java.lang.String r2 = "]"
            boolean r2 = r8.endsWith(r2)     // Catch: java.lang.Throwable -> L66
            java.lang.String r4 = ")"
            boolean r4 = r8.endsWith(r4)     // Catch: java.lang.Throwable -> L66
            r5 = 0
            if (r2 != 0) goto L34
            if (r4 == 0) goto L32
            goto L34
        L32:
            r2 = r3
            goto L3d
        L34:
            int r4 = r8.length()     // Catch: java.lang.Throwable -> L66
            int r4 = r4 - r3
            java.lang.String r8 = r8.substring(r5, r4)     // Catch: java.lang.Throwable -> L66
        L3d:
            java.lang.String r4 = "-"
            java.lang.String[] r4 = r8.split(r4)     // Catch: java.lang.Throwable -> L66
            int r6 = r4.length     // Catch: java.lang.Throwable -> L66
            r7 = 2
            if (r6 >= r7) goto L54
            lr.a r8 = lr.a.g(r8)     // Catch: java.lang.Throwable -> L66
            if (r8 == 0) goto L53
            lr.b r3 = new lr.b     // Catch: java.lang.Throwable -> L66
            r3.<init>(r8, r8, r0, r2)     // Catch: java.lang.Throwable -> L66
            r1 = r3
        L53:
            return r1
        L54:
            r8 = r4[r5]     // Catch: java.lang.Throwable -> L66
            lr.a r8 = lr.a.g(r8)     // Catch: java.lang.Throwable -> L66
            r3 = r4[r3]     // Catch: java.lang.Throwable -> L66
            lr.a r3 = lr.a.g(r3)     // Catch: java.lang.Throwable -> L66
            lr.b r4 = new lr.b     // Catch: java.lang.Throwable -> L66
            r4.<init>(r8, r3, r0, r2)     // Catch: java.lang.Throwable -> L66
            return r4
        L66:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: lr.b.d(java.lang.String):lr.b");
    }

    public boolean a(@NonNull a aVar) {
        a aVar2;
        a aVar3 = this.f62297a;
        if (aVar3 != null && this.f62298b != null && b(aVar3, aVar, this.f62299c) && c(this.f62298b, aVar, this.f62300d)) {
            return true;
        }
        a aVar4 = this.f62297a;
        if (aVar4 != null && this.f62298b == null && b(aVar4, aVar, this.f62299c)) {
            return true;
        }
        if (this.f62297a == null && (aVar2 = this.f62298b) != null && c(aVar2, aVar, this.f62300d)) {
            return true;
        }
        if (this.f62297a == null && this.f62298b == null) {
            return true;
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        if (this.f62299c == bVar.f62299c && this.f62300d == bVar.f62300d && Objects.equals(this.f62297a, bVar.f62297a) && Objects.equals(this.f62298b, bVar.f62298b)) {
            return true;
        }
        return false;
    }
}
