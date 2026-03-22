package com.startshorts.androidplayer.repo.auth.email;

import com.startshorts.androidplayer.repo.auth.email.EmailAuthRemoteDS;
import com.startshorts.androidplayer.repo.auth.email.EmailAuthRepo;
import kotlin.Metadata;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import ms.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: EmailAuthRepo.kt */
@Metadata
/* loaded from: classes7.dex */
public final class EmailAuthRepo {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final EmailAuthRepo f43149a = new EmailAuthRepo();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final i f43150b = c.b(new Function0() { // from class: eg.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            EmailAuthRemoteDS c10;
            c10 = EmailAuthRepo.c();
            return c10;
        }
    });

    private EmailAuthRepo() {
    }

    private final EmailAuthRemoteDS b() {
        return (EmailAuthRemoteDS) f43150b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final EmailAuthRemoteDS c() {
        return new EmailAuthRemoteDS();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object d(@org.jetbrains.annotations.Nullable android.content.Context r5, @org.jetbrains.annotations.NotNull java.lang.String r6, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends java.lang.Object>> r7) {
        /*
            r4 = this;
            boolean r0 = r7 instanceof com.startshorts.androidplayer.repo.auth.email.EmailAuthRepo$sendOTP$1
            if (r0 == 0) goto L13
            r0 = r7
            com.startshorts.androidplayer.repo.auth.email.EmailAuthRepo$sendOTP$1 r0 = (com.startshorts.androidplayer.repo.auth.email.EmailAuthRepo$sendOTP$1) r0
            int r1 = r0.f43153j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f43153j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.auth.email.EmailAuthRepo$sendOTP$1 r0 = new com.startshorts.androidplayer.repo.auth.email.EmailAuthRepo$sendOTP$1
            r0.<init>(r4, r7)
        L18:
            java.lang.Object r7 = r0.f43151h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f43153j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r7)
            kotlin.Result r7 = (kotlin.Result) r7
            java.lang.Object r5 = r7.n()
            goto L47
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            kotlin.f.b(r7)
            com.startshorts.androidplayer.repo.auth.email.EmailAuthRemoteDS r7 = r4.b()
            r0.f43153j = r3
            java.lang.Object r5 = r7.a(r5, r6, r0)
            if (r5 != r1) goto L47
            return r1
        L47:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.auth.email.EmailAuthRepo.d(android.content.Context, java.lang.String, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object e(@org.jetbrains.annotations.Nullable android.content.Context r5, @org.jetbrains.annotations.NotNull java.lang.String r6, @org.jetbrains.annotations.NotNull java.lang.String r7, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends java.lang.Object>> r8) {
        /*
            r4 = this;
            boolean r0 = r8 instanceof com.startshorts.androidplayer.repo.auth.email.EmailAuthRepo$verifyOTP$1
            if (r0 == 0) goto L13
            r0 = r8
            com.startshorts.androidplayer.repo.auth.email.EmailAuthRepo$verifyOTP$1 r0 = (com.startshorts.androidplayer.repo.auth.email.EmailAuthRepo$verifyOTP$1) r0
            int r1 = r0.f43156j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f43156j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.auth.email.EmailAuthRepo$verifyOTP$1 r0 = new com.startshorts.androidplayer.repo.auth.email.EmailAuthRepo$verifyOTP$1
            r0.<init>(r4, r8)
        L18:
            java.lang.Object r8 = r0.f43154h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f43156j
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
            com.startshorts.androidplayer.repo.auth.email.EmailAuthRemoteDS r8 = r4.b()
            r0.f43156j = r3
            java.lang.Object r5 = r8.b(r5, r6, r7, r0)
            if (r5 != r1) goto L47
            return r1
        L47:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.auth.email.EmailAuthRepo.e(android.content.Context, java.lang.String, java.lang.String, rs.c):java.lang.Object");
    }
}
