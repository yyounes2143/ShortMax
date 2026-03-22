package com.unity3d.ads.core.data.repository;

import android.webkit.WebView;
import com.google.protobuf.ByteString;
import com.iab.omid.library.unity3d.adsession.AdSession;
import com.iab.omid.library.unity3d.adsession.AdSessionConfiguration;
import com.iab.omid.library.unity3d.adsession.AdSessionContext;
import com.iab.omid.library.unity3d.adsession.CreativeType;
import com.iab.omid.library.unity3d.adsession.ImpressionType;
import com.iab.omid.library.unity3d.adsession.Owner;
import com.iab.omid.library.unity3d.adsession.Partner;
import com.unity3d.ads.core.data.manager.OmidManager;
import com.unity3d.ads.core.data.model.OMResult;
import com.unity3d.ads.core.data.model.OmidOptions;
import com.unity3d.ads.core.extensions.ExceptionExtensionsKt;
import gt.g0;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kt.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: AndroidOpenMeasurementRepository.kt */
@Metadata
@d(c = "com.unity3d.ads.core.data.repository.AndroidOpenMeasurementRepository$startSession$2", f = "AndroidOpenMeasurementRepository.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class AndroidOpenMeasurementRepository$startSession$2 extends SuspendLambda implements Function2<g0, c<? super OMResult>, Object> {
    final /* synthetic */ ByteString $opportunityId;
    final /* synthetic */ OmidOptions $options;
    final /* synthetic */ WebView $webView;
    int label;
    final /* synthetic */ AndroidOpenMeasurementRepository this$0;

    /* compiled from: AndroidOpenMeasurementRepository.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[CreativeType.values().length];
            try {
                iArr[CreativeType.HTML_DISPLAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CreativeType.VIDEO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidOpenMeasurementRepository$startSession$2(AndroidOpenMeasurementRepository androidOpenMeasurementRepository, ByteString byteString, OmidOptions omidOptions, WebView webView, c<? super AndroidOpenMeasurementRepository$startSession$2> cVar) {
        super(2, cVar);
        this.this$0 = androidOpenMeasurementRepository;
        this.$opportunityId = byteString;
        this.$options = omidOptions;
        this.$webView = webView;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new AndroidOpenMeasurementRepository$startSession$2(this.this$0, this.$opportunityId, this.$options, this.$webView, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super OMResult> cVar) {
        return ((AndroidOpenMeasurementRepository$startSession$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        e eVar;
        OmidManager omidManager;
        OmidManager omidManager2;
        Partner partner;
        AdSessionContext createHtmlAdSessionContext;
        OmidManager omidManager3;
        OmidManager omidManager4;
        Partner partner2;
        a.f();
        if (this.label == 0) {
            f.b(obj);
            try {
                if (this.this$0.isOMActive()) {
                    eVar = this.this$0.activeSessions;
                    if (((Map) eVar.getValue()).containsKey(this.$opportunityId.toStringUtf8())) {
                        return new OMResult.Failure("om_session_already_exists", null, 2, null);
                    }
                    CreativeType creativeType = this.$options.getCreativeType();
                    if (creativeType != null) {
                        omidManager = this.this$0.omidManager;
                        ImpressionType impressionType = this.$options.getImpressionType();
                        if (impressionType == null) {
                            impressionType = ImpressionType.DEFINED_BY_JAVASCRIPT;
                        }
                        ImpressionType impressionType2 = impressionType;
                        Owner impressionOwner = this.$options.getImpressionOwner();
                        if (impressionOwner == null) {
                            impressionOwner = Owner.JAVASCRIPT;
                        }
                        Owner owner = impressionOwner;
                        Owner videoEventsOwner = this.$options.getVideoEventsOwner();
                        if (videoEventsOwner == null) {
                            videoEventsOwner = Owner.JAVASCRIPT;
                        }
                        AdSessionConfiguration createAdSessionConfiguration = omidManager.createAdSessionConfiguration(creativeType, impressionType2, owner, videoEventsOwner, this.$options.getIsolateVerificationScripts());
                        int i10 = WhenMappings.$EnumSwitchMapping$0[creativeType.ordinal()];
                        if (i10 == 1) {
                            omidManager2 = this.this$0.omidManager;
                            partner = this.this$0.partner;
                            createHtmlAdSessionContext = omidManager2.createHtmlAdSessionContext(partner, this.$webView, null, this.$options.getCustomReferenceData());
                        } else if (i10 == 2) {
                            omidManager4 = this.this$0.omidManager;
                            partner2 = this.this$0.partner;
                            createHtmlAdSessionContext = omidManager4.createJavaScriptAdSessionContext(partner2, this.$webView, null, this.$options.getCustomReferenceData());
                        } else {
                            return new OMResult.Failure("om_creative_type_invalid", null, 2, null);
                        }
                        omidManager3 = this.this$0.omidManager;
                        AdSession createAdSession = omidManager3.createAdSession(createAdSessionConfiguration, createHtmlAdSessionContext);
                        createAdSession.registerAdView(this.$webView);
                        createAdSession.start();
                        this.this$0.addSession(this.$opportunityId, createAdSession);
                        return OMResult.Success.INSTANCE;
                    }
                    return new OMResult.Failure("om_creative_type_null", null, 2, null);
                }
                return new OMResult.Failure("om_not_active", null, 2, null);
            } catch (Throwable th2) {
                return new OMResult.Failure("uncaught_exception", ExceptionExtensionsKt.getShortenedStackTrace$default(th2, 0, 1, null));
            }
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
