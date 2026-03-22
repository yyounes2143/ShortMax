package com.moloco.sdk.internal.services;

import android.content.SharedPreferences;
import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.MolocoLogger;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/*  JADX ERROR: JadxRuntimeException in pass: ClassModifier
    jadx.core.utils.exceptions.JadxRuntimeException: Not class type: T
    	at jadx.core.dex.info.ClassInfo.checkClassType(ClassInfo.java:53)
    	at jadx.core.dex.info.ClassInfo.fromType(ClassInfo.java:31)
    	at jadx.core.dex.visitors.ClassModifier.removeSyntheticFields(ClassModifier.java:83)
    	at jadx.core.dex.visitors.ClassModifier.visit(ClassModifier.java:61)
    	at jadx.core.dex.visitors.ClassModifier.visit(ClassModifier.java:55)
    */
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class D implements h0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final SharedPreferences f33074a;

    @d(c = "com.moloco.sdk.internal.services.PreferencesDataStoreServiceImpl$getString$2", f = "DataStoreService.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class f extends SuspendLambda implements Function2<gt.g0, rs.c<? super String>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f33075h;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ String f33077j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(String str, rs.c<? super f> cVar) {
            super(2, cVar);
            this.f33077j = str;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c<? super String> cVar) {
            return ((f) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new f(this.f33077j, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f33075h == 0) {
                kotlin.f.b(obj);
                if (!D.this.f33074a.contains(this.f33077j)) {
                    return null;
                }
                try {
                    return D.this.f33074a.getString(this.f33077j, "");
                } catch (ClassCastException unused) {
                    MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
                    MolocoLogger.warn$default(molocoLogger, "ContentValues", "Unexpected value type for key: " + this.f33077j, null, false, 12, null);
                    return null;
                }
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @d(c = "com.moloco.sdk.internal.services.PreferencesDataStoreServiceImpl$removeKey$2", f = "DataStoreService.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class g extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f33078h;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ String f33080j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(String str, rs.c<? super g> cVar) {
            super(2, cVar);
            this.f33080j = str;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
            return ((g) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new g(this.f33080j, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f33078h == 0) {
                kotlin.f.b(obj);
                D.this.f33074a.edit().remove(this.f33080j).apply();
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @d(c = "com.moloco.sdk.internal.services.PreferencesDataStoreServiceImpl$set$2", f = "DataStoreService.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class h extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f33081h;

        /* renamed from: i  reason: collision with root package name */
        public final /* synthetic */ T f33082i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ D f33083j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ String f33084k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(T t10, D d10, String str, rs.c<? super h> cVar) {
            super(2, cVar);
            this.f33082i = t10;
            this.f33083j = d10;
            this.f33084k = str;
        }

        public final Object a(gt.g0 g0Var, rs.c<? super Unit> cVar) {
            return ((h) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new h(this.f33082i, this.f33083j, this.f33084k, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
            return a(g0Var, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f33081h == 0) {
                kotlin.f.b(obj);
                T t10 = this.f33082i;
                if (t10 instanceof Integer) {
                    this.f33083j.f33074a.edit().putInt(this.f33084k, ((Number) this.f33082i).intValue()).apply();
                } else if (t10 instanceof String) {
                    this.f33083j.f33074a.edit().putString(this.f33084k, (String) this.f33082i).apply();
                } else if (t10 instanceof Float) {
                    this.f33083j.f33074a.edit().putFloat(this.f33084k, ((Number) this.f33082i).floatValue()).apply();
                } else if (t10 instanceof Boolean) {
                    this.f33083j.f33074a.edit().putBoolean(this.f33084k, ((Boolean) this.f33082i).booleanValue()).apply();
                } else if (t10 instanceof Double) {
                    this.f33083j.f33074a.edit().putString(this.f33084k, String.valueOf(((Number) this.f33082i).doubleValue())).apply();
                } else if (t10 instanceof Long) {
                    this.f33083j.f33074a.edit().putString(this.f33084k, String.valueOf(((Number) this.f33082i).longValue())).apply();
                } else {
                    MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
                    MolocoLogger.warn$default(molocoLogger, "ContentValues", "Unexpected value type: " + this.f33082i + " for key: " + this.f33084k, null, false, 12, null);
                }
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public D(@NotNull SharedPreferences sharedPreferences) {
        Intrinsics.checkNotNullParameter(sharedPreferences, "sharedPreferences");
        this.f33074a = sharedPreferences;
    }

    @Override // com.moloco.sdk.internal.services.h0
    @Nullable
    public Object a(@NotNull String str, @NotNull rs.c<? super String> cVar) {
        return gt.e.g(com.moloco.sdk.internal.scheduling.c.a().getIo(), new f(str, null), cVar);
    }

    @Override // com.moloco.sdk.internal.services.h0
    @Nullable
    public Object b(@NotNull String str, @NotNull rs.c<? super Unit> cVar) {
        Object g10 = gt.e.g(com.moloco.sdk.internal.scheduling.c.a().getIo(), new g(str, null), cVar);
        if (g10 == kotlin.coroutines.intrinsics.a.f()) {
            return g10;
        }
        return Unit.f60915a;
    }

    @Override // com.moloco.sdk.internal.services.h0
    @Nullable
    public <T> Object c(@NotNull String str, T t10, @NotNull rs.c<? super Unit> cVar) {
        Object g10 = gt.e.g(com.moloco.sdk.internal.scheduling.c.a().getIo(), new h(t10, this, str, null), cVar);
        if (g10 == kotlin.coroutines.intrinsics.a.f()) {
            return g10;
        }
        return Unit.f60915a;
    }

    static {
    }
}
