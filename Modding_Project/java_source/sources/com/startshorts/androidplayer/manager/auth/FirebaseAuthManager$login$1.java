package com.startshorts.androidplayer.manager.auth;

import com.hades.aar.auth.base.AuthType;
import com.startshorts.androidplayer.bean.account.Account;
import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.auth.LoginResult;
import com.startshorts.androidplayer.manager.api.base.k;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import rs.c;
/* compiled from: FirebaseAuthManager.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.auth.FirebaseAuthManager$login$1", f = "FirebaseAuthManager.kt", l = {144, 155, 177}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nFirebaseAuthManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FirebaseAuthManager.kt\ncom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1\n+ 2 ApiBuilder.kt\ncom/startshorts/androidplayer/manager/api/base/ApiBuilderKt\n*L\n1#1,378:1\n125#2,13:379\n*S KotlinDebug\n*F\n+ 1 FirebaseAuthManager.kt\ncom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1\n*L\n175#1:379,13\n*E\n"})
/* loaded from: classes6.dex */
final class FirebaseAuthManager$login$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f42127h;

    /* renamed from: i  reason: collision with root package name */
    int f42128i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ AuthType f42129j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ Account f42130k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ String f42131l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ String f42132m;

    /* renamed from: n  reason: collision with root package name */
    final /* synthetic */ FirebaseAuthManager f42133n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FirebaseAuthManager.kt */
    @Metadata
    @d(c = "com.startshorts.androidplayer.manager.auth.FirebaseAuthManager$login$1$1", f = "FirebaseAuthManager.kt", l = {145}, m = "invokeSuspend")
    /* renamed from: com.startshorts.androidplayer.manager.auth.FirebaseAuthManager$login$1$1  reason: invalid class name */
    /* loaded from: classes6.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function1<c<? super ServerResult<LoginResult>>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f42134h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ Account f42135i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ String f42136j;

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ int f42137k;

        /* renamed from: l  reason: collision with root package name */
        final /* synthetic */ int f42138l;

        /* renamed from: m  reason: collision with root package name */
        final /* synthetic */ String f42139m;

        /* renamed from: n  reason: collision with root package name */
        final /* synthetic */ String f42140n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Account account, String str, int i10, int i11, String str2, String str3, c<? super AnonymousClass1> cVar) {
            super(1, cVar);
            this.f42135i = account;
            this.f42136j = str;
            this.f42137k = i10;
            this.f42138l = i11;
            this.f42139m = str2;
            this.f42140n = str3;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final c<Unit> create(c<?> cVar) {
            return new AnonymousClass1(this.f42135i, this.f42136j, this.f42137k, this.f42138l, this.f42139m, this.f42140n, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            String str;
            String str2;
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f42134h;
            if (i10 != 0) {
                if (i10 == 1) {
                    f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                f.b(obj);
                k.a j10 = k.f41787a.j();
                String registerCode = this.f42135i.getRegisterCode();
                if (registerCode == null) {
                    str = "";
                } else {
                    str = registerCode;
                }
                String userCode = this.f42135i.getUserCode();
                String str3 = this.f42136j;
                if (str3 == null) {
                    str2 = "";
                } else {
                    str2 = str3;
                }
                int i11 = this.f42137k;
                int i12 = this.f42138l;
                String str4 = this.f42139m;
                String str5 = this.f42140n;
                this.f42134h = 1;
                obj = j10.Z(i11, i12, str4, str5, userCode, str, str2, this);
                if (obj == f10) {
                    return f10;
                }
            }
            return obj;
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(c<? super ServerResult<LoginResult>> cVar) {
            return ((AnonymousClass1) create(cVar)).invokeSuspend(Unit.f60915a);
        }
    }

    /* compiled from: FirebaseAuthManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[AuthType.values().length];
            try {
                iArr[AuthType.GOOGLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AuthType.HUAWEI.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FirebaseAuthManager$login$1(AuthType authType, Account account, String str, String str2, FirebaseAuthManager firebaseAuthManager, c<? super FirebaseAuthManager$login$1> cVar) {
        super(2, cVar);
        this.f42129j = authType;
        this.f42130k = account;
        this.f42131l = str;
        this.f42132m = str2;
        this.f42133n = firebaseAuthManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new FirebaseAuthManager$login$1(this.f42129j, this.f42130k, this.f42131l, this.f42132m, this.f42133n, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((FirebaseAuthManager$login$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x007d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00ae  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r15) {
        /*
            Method dump skipped, instructions count: 270
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.auth.FirebaseAuthManager$login$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
