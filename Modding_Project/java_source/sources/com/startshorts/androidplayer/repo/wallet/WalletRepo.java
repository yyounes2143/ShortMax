package com.startshorts.androidplayer.repo.wallet;

import android.content.Context;
import androidx.fragment.app.Fragment;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import com.startshorts.androidplayer.bean.tab.WalletTab;
import com.startshorts.androidplayer.repo.wallet.WalletLocalDS;
import com.startshorts.androidplayer.repo.wallet.WalletRemoteDS;
import com.startshorts.androidplayer.repo.wallet.WalletRepo;
import java.util.List;
import kotlin.Metadata;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: WalletRepo.kt */
@Metadata
/* loaded from: classes7.dex */
public final class WalletRepo {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final WalletRepo f44780a = new WalletRepo();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final i f44781b = c.b(new Function0() { // from class: mh.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            WalletLocalDS g10;
            g10 = WalletRepo.g();
            return g10;
        }
    });
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final i f44782c = c.b(new Function0() { // from class: mh.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            WalletRemoteDS h10;
            h10 = WalletRepo.h();
            return h10;
        }
    });

    private WalletRepo() {
    }

    private final WalletLocalDS c() {
        return (WalletLocalDS) f44781b.getValue();
    }

    private final WalletRemoteDS d() {
        return (WalletRemoteDS) f44782c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WalletLocalDS g() {
        return new WalletLocalDS();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WalletRemoteDS h() {
        return new WalletRemoteDS();
    }

    @NotNull
    public final FragmentStateAdapter e(@NotNull Fragment fragment) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        return c().c(fragment);
    }

    @NotNull
    public final List<WalletTab> f(@NotNull Context context, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        return c().d(context, i10);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object i(int r5, int r6, int r7, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends java.util.List<com.startshorts.androidplayer.bean.record.WalletRecord>>> r8) {
        /*
            r4 = this;
            boolean r0 = r8 instanceof com.startshorts.androidplayer.repo.wallet.WalletRepo$queryWalletRecords$1
            if (r0 == 0) goto L13
            r0 = r8
            com.startshorts.androidplayer.repo.wallet.WalletRepo$queryWalletRecords$1 r0 = (com.startshorts.androidplayer.repo.wallet.WalletRepo$queryWalletRecords$1) r0
            int r1 = r0.f44785j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44785j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.wallet.WalletRepo$queryWalletRecords$1 r0 = new com.startshorts.androidplayer.repo.wallet.WalletRepo$queryWalletRecords$1
            r0.<init>(r4, r8)
        L18:
            java.lang.Object r8 = r0.f44783h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44785j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r8)
            kotlin.Result r8 = (kotlin.Result) r8
            java.lang.Object r5 = r8.n()
            goto L47
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            kotlin.f.b(r8)
            com.startshorts.androidplayer.repo.wallet.WalletRemoteDS r8 = r4.d()
            r0.f44785j = r3
            java.lang.Object r5 = r8.a(r5, r6, r7, r0)
            if (r5 != r1) goto L47
            return r1
        L47:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.wallet.WalletRepo.i(int, int, int, rs.c):java.lang.Object");
    }
}
