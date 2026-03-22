package com.startshorts.androidplayer.repo.p004switch;

import com.startshorts.androidplayer.repo.p004switch.SwitchRemoteDS;
import com.startshorts.androidplayer.repo.p004switch.SwitchRepo;
import kotlin.Metadata;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import ms.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: SwitchRepo.kt */
@Metadata
/* renamed from: com.startshorts.androidplayer.repo.switch.SwitchRepo  reason: invalid package */
/* loaded from: classes7.dex */
public final class SwitchRepo {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final SwitchRepo f44618a = new SwitchRepo();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final i f44619b = c.b(new Function0() { // from class: ih.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            SwitchRemoteDS c10;
            c10 = SwitchRepo.c();
            return c10;
        }
    });

    private SwitchRepo() {
    }

    private final SwitchRemoteDS b() {
        return (SwitchRemoteDS) f44619b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SwitchRemoteDS c() {
        return new SwitchRemoteDS();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object d(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.auth.SwitchInfoList>> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.startshorts.androidplayer.repo.p004switch.SwitchRepo$querySwitchInfoList$1
            if (r0 == 0) goto L13
            r0 = r5
            com.startshorts.androidplayer.repo.switch.SwitchRepo$querySwitchInfoList$1 r0 = (com.startshorts.androidplayer.repo.p004switch.SwitchRepo$querySwitchInfoList$1) r0
            int r1 = r0.f44622j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44622j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.switch.SwitchRepo$querySwitchInfoList$1 r0 = new com.startshorts.androidplayer.repo.switch.SwitchRepo$querySwitchInfoList$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.f44620h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44622j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r5)
            kotlin.Result r5 = (kotlin.Result) r5
            java.lang.Object r5 = r5.n()
            goto L47
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L37:
            kotlin.f.b(r5)
            com.startshorts.androidplayer.repo.switch.SwitchRemoteDS r5 = r4.b()
            r0.f44622j = r3
            java.lang.Object r5 = r5.a(r0)
            if (r5 != r1) goto L47
            return r1
        L47:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.p004switch.SwitchRepo.d(rs.c):java.lang.Object");
    }
}
