package com.startshorts.androidplayer.repo.profile;

import android.content.Context;
import com.startshorts.androidplayer.bean.profile.ProfileMenu;
import com.startshorts.androidplayer.repo.profile.ProfileRemoteDS;
import com.startshorts.androidplayer.repo.profile.ProfileRepo;
import dh.a;
import java.util.List;
import kotlin.Metadata;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: ProfileRepo.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ProfileRepo {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final ProfileRepo f44320a = new ProfileRepo();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final i f44321b = c.b(new Function0() { // from class: dh.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            a e10;
            e10 = ProfileRepo.e();
            return e10;
        }
    });
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final i f44322c = c.b(new Function0() { // from class: dh.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ProfileRemoteDS f10;
            f10 = ProfileRepo.f();
            return f10;
        }
    });

    private ProfileRepo() {
    }

    private final a c() {
        return (a) f44321b.getValue();
    }

    private final ProfileRemoteDS d() {
        return (ProfileRemoteDS) f44322c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final a e() {
        return new a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ProfileRemoteDS f() {
        return new ProfileRemoteDS();
    }

    @NotNull
    public final List<ProfileMenu> g(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return c().a(context);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object h(int r5, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.profile.TodayBonusTotal>> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.startshorts.androidplayer.repo.profile.ProfileRepo$queryTodayBonusTotal$1
            if (r0 == 0) goto L13
            r0 = r6
            com.startshorts.androidplayer.repo.profile.ProfileRepo$queryTodayBonusTotal$1 r0 = (com.startshorts.androidplayer.repo.profile.ProfileRepo$queryTodayBonusTotal$1) r0
            int r1 = r0.f44325j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44325j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.profile.ProfileRepo$queryTodayBonusTotal$1 r0 = new com.startshorts.androidplayer.repo.profile.ProfileRepo$queryTodayBonusTotal$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.f44323h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44325j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r6)
            kotlin.Result r6 = (kotlin.Result) r6
            java.lang.Object r5 = r6.n()
            goto L47
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            kotlin.f.b(r6)
            com.startshorts.androidplayer.repo.profile.ProfileRemoteDS r6 = r4.d()
            r0.f44325j = r3
            java.lang.Object r5 = r6.a(r5, r0)
            if (r5 != r1) goto L47
            return r1
        L47:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.profile.ProfileRepo.h(int, rs.c):java.lang.Object");
    }
}
