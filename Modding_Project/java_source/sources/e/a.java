package e;

import java.util.ArrayList;
/* loaded from: classes.dex */
public final class a implements kt.c {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ kt.c f50610a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ ArrayList f50611b;

    public a(kt.c cVar, ArrayList arrayList) {
        this.f50610a = cVar;
        this.f50611b = arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    @Override // kt.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object emit(java.lang.Object r6, rs.c r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof p000admanager.d.z
            if (r0 == 0) goto L13
            r0 = r7
            ad-manager.d.z r0 = (p000admanager.d.z) r0
            int r1 = r0.f516i
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f516i = r1
            goto L18
        L13:
            ad-manager.d.z r0 = new ad-manager.d.z
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.f515h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f516i
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.f.b(r7)
            goto L4e
        L29:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L31:
            kotlin.f.b(r7)
            kt.c r7 = r5.f50610a
            r2 = r6
            ca.b r2 = (ca.b) r2
            java.util.ArrayList r4 = r5.f50611b
            java.lang.String r2 = r2.a()
            boolean r2 = r4.contains(r2)
            if (r2 == 0) goto L4e
            r0.f516i = r3
            java.lang.Object r6 = r7.emit(r6, r0)
            if (r6 != r1) goto L4e
            return r1
        L4e:
            kotlin.Unit r6 = kotlin.Unit.f60915a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: e.a.emit(java.lang.Object, rs.c):java.lang.Object");
    }
}
