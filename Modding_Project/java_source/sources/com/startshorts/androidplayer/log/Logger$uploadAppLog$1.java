package com.startshorts.androidplayer.log;

import com.jiuzhou.cdn.repo.CdnRepo;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.log.Logger$uploadAppLog$1;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.FileUtil;
import com.startshorts.androidplayer.utils.TimeUtil;
import fk.u;
import gt.g0;
import java.io.File;
import java.util.Date;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt;
import yd.f;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Logger.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.log.Logger$uploadAppLog$1", f = "Logger.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class Logger$uploadAppLog$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f41517h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ f f41518i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Logger.kt */
    @Metadata
    @d(c = "com.startshorts.androidplayer.log.Logger$uploadAppLog$1$1", f = "Logger.kt", l = {211}, m = "invokeSuspend")
    /* renamed from: com.startshorts.androidplayer.log.Logger$uploadAppLog$1$1  reason: invalid class name */
    /* loaded from: classes6.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f41519h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef<String> f41520i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ String f41521j;

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ File f41522k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Ref.ObjectRef<String> objectRef, String str, File file, rs.c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.f41520i = objectRef;
            this.f41521j = str;
            this.f41522k = file;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit k(File file) {
            Logger.f41514d = false;
            FileUtil.f48159a.b(file, true);
            Logger.f41511a.h("Logger", "uploadAppLog success");
            return Unit.f60915a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit n(File file, String str) {
            Logger logger = Logger.f41511a;
            logger.e("Logger", "uploadAppLog failed -> " + str);
            Logger.f41514d = false;
            FileUtil.f48159a.b(file, true);
            return Unit.f60915a;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new AnonymousClass1(this.f41520i, this.f41521j, this.f41522k, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f41519h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                String str = "android/" + DeviceUtil.f48146a.U() + '/' + StringsKt.P(TimeUtil.f48175a.g(jk.f.a(new Date()), TimeUtil.Template.MONTH_DAY_YEAR_HH_MM_SS), " ", "_", false, 4, null) + '_' + System.currentTimeMillis();
                CdnRepo cdnRepo = CdnRepo.f25579a;
                String str2 = this.f41520i.element;
                String str3 = this.f41521j;
                final File file = this.f41522k;
                Function0<Unit> function0 = new Function0() { // from class: com.startshorts.androidplayer.log.a
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        Unit k10;
                        k10 = Logger$uploadAppLog$1.AnonymousClass1.k(file);
                        return k10;
                    }
                };
                final File file2 = this.f41522k;
                Function1<? super String, Unit> function1 = new Function1() { // from class: com.startshorts.androidplayer.log.b
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        Unit n10;
                        n10 = Logger$uploadAppLog$1.AnonymousClass1.n(file2, (String) obj2);
                        return n10;
                    }
                };
                this.f41519h = 1;
                if (cdnRepo.k(str2, str3, file, str, function0, function1, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Logger$uploadAppLog$1(f fVar, rs.c<? super Logger$uploadAppLog$1> cVar) {
        super(2, cVar);
        this.f41518i = fVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new Logger$uploadAppLog$1(this.f41518i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((Logger$uploadAppLog$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Type inference failed for: r2v10, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v3, types: [T, java.lang.String] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        File o10;
        File o11;
        kotlin.coroutines.intrinsics.a.f();
        if (this.f41517h == 0) {
            kotlin.f.b(obj);
            File file = new File(cf.a.f3491a.a(), "xlog");
            if (!file.exists()) {
                Logger.f41511a.e("Logger", "uploadAppLog failed -> not find dir(" + file.getAbsolutePath() + ')');
                Logger.f41514d = false;
                f fVar = this.f41518i;
                if (fVar != null) {
                    fVar.a(u.f51776a.d(R$string.common_unknown_exception));
                }
                return Unit.f60915a;
            }
            boolean useNewLogUpload = qe.a.f65321a.value().getUseNewLogUpload();
            if (c.f41525a.a(useNewLogUpload)) {
                String str = DeviceUtil.f48146a.K() + "_app.zip";
                Logger logger = Logger.f41511a;
                o11 = logger.o(str, file);
                if (o11 == null) {
                    Logger.f41514d = false;
                    f fVar2 = this.f41518i;
                    if (fVar2 != null) {
                        fVar2.a(u.f51776a.d(R$string.common_unknown_exception));
                    }
                } else {
                    logger.n(o11, str, this.f41518i);
                }
            }
            if (useNewLogUpload) {
                Ref.ObjectRef objectRef = new Ref.ObjectRef();
                ?? t02 = AccountRepo.f43052a.t0();
                objectRef.element = t02;
                if (((CharSequence) t02).length() == 0) {
                    objectRef.element = ud.a.f68411a.m();
                }
                String str2 = "android_" + DeviceUtil.f48146a.U() + '_' + TimeUtil.f48175a.g(jk.f.a(new Date()), TimeUtil.Template.YEAR_MONTH_DAY) + '_' + System.currentTimeMillis() + '_' + ((String) objectRef.element) + ".zip";
                o10 = Logger.f41511a.o(str2, file);
                if (o10 == null) {
                    Logger.f41514d = false;
                    f fVar3 = this.f41518i;
                    if (fVar3 != null) {
                        fVar3.a(u.f51776a.d(R$string.common_unknown_exception));
                    }
                } else {
                    CoroutineUtil.l(CoroutineUtil.f48072a, "uploadAppLog", false, new AnonymousClass1(objectRef, str2, o10, null), 2, null);
                }
            }
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
