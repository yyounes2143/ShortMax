package com.startshorts.androidplayer.manager.player.feature;

import android.os.Bundle;
import com.bytedance.applog.aggregation.MetricsSQLiteCacheKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.startshorts.androidplayer.bean.player.PlayerHeaderInfo;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.manager.player.feature.RequestHeadersFeature;
import gt.g0;
import java.util.List;
import jk.l;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RequestHeadersFeature.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.player.feature.RequestHeadersFeature$createListener$1$1", f = "RequestHeadersFeature.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class RequestHeadersFeature$createListener$1$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f42702h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ String f42703i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ RequestHeadersFeature f42704j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RequestHeadersFeature$createListener$1$1(String str, RequestHeadersFeature requestHeadersFeature, rs.c<? super RequestHeadersFeature$createListener$1$1> cVar) {
        super(2, cVar);
        this.f42703i = str;
        this.f42704j = requestHeadersFeature;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new RequestHeadersFeature$createListener$1$1(this.f42703i, this.f42704j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((RequestHeadersFeature$createListener$1$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String rawKey;
        List i10;
        List i11;
        kotlin.coroutines.intrinsics.a.f();
        if (this.f42702h == 0) {
            kotlin.f.b(obj);
            PlayerHeaderInfo playerHeaderInfo = (PlayerHeaderInfo) l.b(this.f42703i, PlayerHeaderInfo.class);
            if (playerHeaderInfo == null) {
                return Unit.f60915a;
            }
            String fileKey = playerHeaderInfo.getFileKey();
            if (fileKey != null && fileKey.length() != 0 && (rawKey = playerHeaderInfo.getRawKey()) != null && rawKey.length() != 0) {
                String url = playerHeaderInfo.getUrl();
                if (url != null && url.length() != 0) {
                    if (playerHeaderInfo.getRequestPriority() == 1 && ((playerHeaderInfo.getStatusCode() >= 300 || playerHeaderInfo.getErrorCode() != 0) && playerHeaderInfo.getErrorCode() != -1414092869)) {
                        i10 = this.f42704j.i();
                        if (!i10.contains(url)) {
                            i11 = this.f42704j.i();
                            i11.add(url);
                            RequestHeadersFeature.a h10 = this.f42704j.h();
                            if (h10 != null) {
                                h10.a(playerHeaderInfo);
                            }
                            EventManager eventManager = EventManager.f42463a;
                            Bundle bundle = new Bundle();
                            bundle.putString(MetricsSQLiteCacheKt.METRICS_START_TIME, String.valueOf(playerHeaderInfo.getStartTime()));
                            bundle.putString(MetricsSQLiteCacheKt.METRICS_END_TIME, String.valueOf(playerHeaderInfo.getEndTime()));
                            bundle.putString(CampaignEx.JSON_KEY_VIDEO_URL, url);
                            bundle.putString("req_headers", playerHeaderInfo.getReqHeaders());
                            bundle.putString("resp_headers", playerHeaderInfo.getRespHeaders());
                            bundle.putString("status_code", String.valueOf(playerHeaderInfo.getStatusCode()));
                            bundle.putString("err_code", String.valueOf(playerHeaderInfo.getErrorCode()));
                            Unit unit = Unit.f60915a;
                            EventManager.s0(eventManager, "player_error_headers", bundle, 0L, 4, null);
                            return Unit.f60915a;
                        }
                        return Unit.f60915a;
                    }
                    return Unit.f60915a;
                }
                return Unit.f60915a;
            }
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
