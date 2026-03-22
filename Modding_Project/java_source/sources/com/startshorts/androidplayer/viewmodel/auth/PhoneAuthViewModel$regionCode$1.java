package com.startshorts.androidplayer.viewmodel.auth;

import com.ss.ttm.player.MediaPlayer;
import com.startshorts.androidplayer.bean.exception.ResponseException;
import com.startshorts.androidplayer.bean.region.Region;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.repo.auth.phone.PhoneAuthRepo;
import com.startshorts.androidplayer.viewmodel.auth.f;
import gt.g0;
import jk.o;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
/* compiled from: PhoneAuthViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.auth.PhoneAuthViewModel$regionCode$1", f = "PhoneAuthViewModel.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_HTTP_RES_FINSIH_TIME}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nPhoneAuthViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PhoneAuthViewModel.kt\ncom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$regionCode$1\n+ 2 ApiBuilder.kt\ncom/startshorts/androidplayer/manager/api/base/ApiBuilderKt\n*L\n1#1,288:1\n125#2,13:289\n*S KotlinDebug\n*F\n+ 1 PhoneAuthViewModel.kt\ncom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$regionCode$1\n*L\n279#1:289,13\n*E\n"})
/* loaded from: classes7.dex */
final class PhoneAuthViewModel$regionCode$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48235h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ PhoneAuthViewModel f48236i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PhoneAuthViewModel$regionCode$1(PhoneAuthViewModel phoneAuthViewModel, rs.c<? super PhoneAuthViewModel$regionCode$1> cVar) {
        super(2, cVar);
        this.f48236i = phoneAuthViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new PhoneAuthViewModel$regionCode$1(this.f48236i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((PhoneAuthViewModel$regionCode$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object d10;
        ResponseException responseException;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f48235h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
                d10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            PhoneAuthRepo phoneAuthRepo = PhoneAuthRepo.f43186a;
            this.f48235h = 1;
            d10 = phoneAuthRepo.d(this);
            if (d10 == f10) {
                return f10;
            }
        }
        PhoneAuthViewModel phoneAuthViewModel = this.f48236i;
        if (Result.j(d10)) {
            o.b(phoneAuthViewModel.L(), new f.c((Region) d10));
        }
        PhoneAuthViewModel phoneAuthViewModel2 = this.f48236i;
        Throwable g10 = Result.g(d10);
        if (g10 != null) {
            if (g10 instanceof ResponseException) {
                responseException = (ResponseException) g10;
            } else {
                responseException = null;
            }
            if (responseException == null) {
                Logger logger = Logger.f41511a;
                logger.e("ApiBuilder", "onResponseFailure exception -> " + g10.getMessage() + ", exception must not be null");
            } else {
                o.b(phoneAuthViewModel2.L(), new f.d(responseException.isNetworkError(), responseException.getMessage()));
            }
        }
        return Unit.f60915a;
    }
}
