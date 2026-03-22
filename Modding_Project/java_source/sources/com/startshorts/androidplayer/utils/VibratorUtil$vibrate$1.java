package com.startshorts.androidplayer.utils;

import android.os.Build;
import android.os.VibrationEffect;
import android.os.Vibrator;
import fk.u;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: VibratorUtil.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.utils.VibratorUtil$vibrate$1", f = "VibratorUtil.kt", l = {44}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nVibratorUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VibratorUtil.kt\ncom/startshorts/androidplayer/utils/VibratorUtil$vibrate$1\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,38:1\n116#2,11:39\n*S KotlinDebug\n*F\n+ 1 VibratorUtil.kt\ncom/startshorts/androidplayer/utils/VibratorUtil$vibrate$1\n*L\n21#1:39,11\n*E\n"})
/* loaded from: classes7.dex */
public final class VibratorUtil$vibrate$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f48180h;

    /* renamed from: i  reason: collision with root package name */
    int f48181i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public VibratorUtil$vibrate$1(c<? super VibratorUtil$vibrate$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new VibratorUtil$vibrate$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((VibratorUtil$vibrate$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        qt.a aVar;
        qt.a aVar2;
        Vibrator vibrator;
        Vibrator vibrator2;
        Vibrator vibrator3;
        VibrationEffect createOneShot;
        Vibrator vibrator4;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f48181i;
        if (i10 != 0) {
            if (i10 == 1) {
                aVar2 = (qt.a) this.f48180h;
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            aVar = VibratorUtil.f48178b;
            this.f48180h = aVar;
            this.f48181i = 1;
            if (aVar.lock(null, this) == f10) {
                return f10;
            }
            aVar2 = aVar;
        }
        try {
            vibrator = VibratorUtil.f48179c;
            if (vibrator == null) {
                Object systemService = u.f51776a.b().getSystemService("vibrator");
                if (systemService instanceof Vibrator) {
                    vibrator4 = (Vibrator) systemService;
                } else {
                    vibrator4 = null;
                }
                VibratorUtil.f48179c = vibrator4;
            }
            if (Build.VERSION.SDK_INT >= 26) {
                vibrator3 = VibratorUtil.f48179c;
                if (vibrator3 != null) {
                    createOneShot = VibrationEffect.createOneShot(30L, -1);
                    vibrator3.vibrate(createOneShot);
                }
            } else {
                vibrator2 = VibratorUtil.f48179c;
                if (vibrator2 != null) {
                    vibrator2.vibrate(30L);
                }
            }
            Unit unit = Unit.f60915a;
            aVar2.unlock(null);
            return Unit.f60915a;
        } catch (Throwable th2) {
            aVar2.unlock(null);
            throw th2;
        }
    }
}
