package com.google.firebase.sessions;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: InstallationId.kt */
@Metadata
/* loaded from: classes5.dex */
public final class InstallationId {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final Companion f21497c = new Companion(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f21498a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final String f21499b;

    /* compiled from: InstallationId.kt */
    @Metadata
    /* loaded from: classes5.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Can't wrap try/catch for region: R(14:1|(2:3|(12:5|6|7|(1:(1:(6:11|12|13|(1:15)|16|17)(2:20|21))(2:22|23))(3:30|31|(1:33))|24|25|26|(1:28)|13|(0)|16|17))|38|6|7|(0)(0)|24|25|26|(0)|13|(0)|16|17) */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x0034, code lost:
            r10 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x0046, code lost:
            r10 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x006a, code lost:
            android.util.Log.w("FirebaseSessions", "Error getting authentication token.", r10);
            r10 = r9;
            r9 = "";
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x008c, code lost:
            android.util.Log.w("FirebaseSessions", "Error getting Firebase installation id .", r10);
            r9 = r9;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:10:0x0028  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0048  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x0084 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:37:0x008a  */
        /* JADX WARN: Type inference failed for: r9v13, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r9v16 */
        /* JADX WARN: Type inference failed for: r9v17 */
        /* JADX WARN: Type inference failed for: r9v18 */
        /* JADX WARN: Type inference failed for: r9v5, types: [java.lang.String] */
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object a(@org.jetbrains.annotations.NotNull x8.e r9, @org.jetbrains.annotations.NotNull rs.c<? super com.google.firebase.sessions.InstallationId> r10) {
            /*
                r8 = this;
                boolean r0 = r10 instanceof com.google.firebase.sessions.InstallationId$Companion$create$1
                if (r0 == 0) goto L13
                r0 = r10
                com.google.firebase.sessions.InstallationId$Companion$create$1 r0 = (com.google.firebase.sessions.InstallationId$Companion$create$1) r0
                int r1 = r0.f21503k
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.f21503k = r1
                goto L18
            L13:
                com.google.firebase.sessions.InstallationId$Companion$create$1 r0 = new com.google.firebase.sessions.InstallationId$Companion$create$1
                r0.<init>(r8, r10)
            L18:
                java.lang.Object r10 = r0.f21501i
                java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
                int r2 = r0.f21503k
                java.lang.String r3 = "FirebaseSessions"
                r4 = 2
                r5 = 1
                java.lang.String r6 = ""
                if (r2 == 0) goto L48
                if (r2 == r5) goto L3e
                if (r2 != r4) goto L36
                java.lang.Object r9 = r0.f21500h
                java.lang.String r9 = (java.lang.String) r9
                kotlin.f.b(r10)     // Catch: java.lang.Exception -> L34
                goto L85
            L34:
                r10 = move-exception
                goto L8c
            L36:
                java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
                java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
                r9.<init>(r10)
                throw r9
            L3e:
                java.lang.Object r9 = r0.f21500h
                x8.e r9 = (x8.e) r9
                kotlin.f.b(r10)     // Catch: java.lang.Exception -> L46
                goto L60
            L46:
                r10 = move-exception
                goto L6a
            L48:
                kotlin.f.b(r10)
                r10 = 0
                com.google.android.gms.tasks.Task r10 = r9.a(r10)     // Catch: java.lang.Exception -> L46
                java.lang.String r2 = "getToken(...)"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r10, r2)     // Catch: java.lang.Exception -> L46
                r0.f21500h = r9     // Catch: java.lang.Exception -> L46
                r0.f21503k = r5     // Catch: java.lang.Exception -> L46
                java.lang.Object r10 = rt.b.a(r10, r0)     // Catch: java.lang.Exception -> L46
                if (r10 != r1) goto L60
                return r1
            L60:
                com.google.firebase.installations.f r10 = (com.google.firebase.installations.f) r10     // Catch: java.lang.Exception -> L46
                java.lang.String r10 = r10.b()     // Catch: java.lang.Exception -> L46
                r7 = r10
                r10 = r9
                r9 = r7
                goto L71
            L6a:
                java.lang.String r2 = "Error getting authentication token."
                android.util.Log.w(r3, r2, r10)
                r10 = r9
                r9 = r6
            L71:
                com.google.android.gms.tasks.Task r10 = r10.getId()     // Catch: java.lang.Exception -> L34
                java.lang.String r2 = "getId(...)"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r10, r2)     // Catch: java.lang.Exception -> L34
                r0.f21500h = r9     // Catch: java.lang.Exception -> L34
                r0.f21503k = r4     // Catch: java.lang.Exception -> L34
                java.lang.Object r10 = rt.b.a(r10, r0)     // Catch: java.lang.Exception -> L34
                if (r10 != r1) goto L85
                return r1
            L85:
                java.lang.String r10 = (java.lang.String) r10     // Catch: java.lang.Exception -> L34
                if (r10 != 0) goto L8a
                goto L91
            L8a:
                r6 = r10
                goto L91
            L8c:
                java.lang.String r0 = "Error getting Firebase installation id ."
                android.util.Log.w(r3, r0, r10)
            L91:
                com.google.firebase.sessions.InstallationId r10 = new com.google.firebase.sessions.InstallationId
                r0 = 0
                r10.<init>(r6, r9, r0)
                return r10
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.sessions.InstallationId.Companion.a(x8.e, rs.c):java.lang.Object");
        }

        private Companion() {
        }
    }

    public /* synthetic */ InstallationId(String str, String str2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2);
    }

    @NotNull
    public final String a() {
        return this.f21499b;
    }

    @NotNull
    public final String b() {
        return this.f21498a;
    }

    private InstallationId(String str, String str2) {
        this.f21498a = str;
        this.f21499b = str2;
    }
}
