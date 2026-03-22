package ai.turbolink.sdk;

import ai.turbolink.sdk.TurboLink;
import ai.turbolink.sdk.coroutines.SensorInfo;
import ai.turbolink.sdk.coroutines.VpnInfo;
import ai.turbolink.sdk.device.SystemObserver;
import ai.turbolink.sdk.events.TurboLinkEvent;
import ai.turbolink.sdk.request.ServerRequestSession;
import ai.turbolink.sdk.request.TurboLinkDefaultEvent;
import ai.turbolink.sdk.request.event.EventInstall;
import ai.turbolink.sdk.request.event.EventOpen;
import android.content.Context;
import gt.g0;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.DelayKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TurboLinkActivitySession.kt */
@Metadata
@d(c = "ai.turbolink.sdk.TurboLinkActivitySession$sessionInit$2", f = "TurboLinkActivitySession.kt", l = {110}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class TurboLinkActivitySession$sessionInit$2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ TurboLinkEvent.TurboLinkEventCallback $_callback;
    final /* synthetic */ Ref.ObjectRef<Context> $_context;
    final /* synthetic */ Ref.ObjectRef<ServerRequestSession> $initRequest;
    final /* synthetic */ TurboLink $turboLink;
    int label;
    final /* synthetic */ TurboLinkActivitySession this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TurboLinkActivitySession$sessionInit$2(Ref.ObjectRef<Context> objectRef, TurboLinkActivitySession turboLinkActivitySession, Ref.ObjectRef<ServerRequestSession> objectRef2, TurboLinkEvent.TurboLinkEventCallback turboLinkEventCallback, TurboLink turboLink, c<? super TurboLinkActivitySession$sessionInit$2> cVar) {
        super(2, cVar);
        this.$_context = objectRef;
        this.this$0 = turboLinkActivitySession;
        this.$initRequest = objectRef2;
        this.$_callback = turboLinkEventCallback;
        this.$turboLink = turboLink;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new TurboLinkActivitySession$sessionInit$2(this.$_context, this.this$0, this.$initRequest, this.$_callback, this.$turboLink, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((TurboLinkActivitySession$sessionInit$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [T, ai.turbolink.sdk.request.event.EventOpen] */
    /* JADX WARN: Type inference failed for: r0v14, types: [T, ai.turbolink.sdk.request.event.EventInstall] */
    /* JADX WARN: Type inference failed for: r0v3, types: [ai.turbolink.sdk.request.ServerRequestSession, T] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        int i10;
        int i11;
        String str;
        boolean z10;
        String str2;
        String str3;
        boolean z11;
        boolean z12;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i12 = this.label;
        if (i12 != 0) {
            if (i12 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            TurboLink.RiskManager riskManager = TurboLink.RiskManager.INSTANCE;
            if (VpnInfo.INSTANCE.isVpnConnected(this.$_context.element)) {
                i10 = 2;
            } else {
                i10 = 1;
            }
            riskManager.setVpnStatus(i10);
            if (SystemObserver.Companion.getRootPermission()) {
                i11 = 100;
            } else {
                i11 = 0;
            }
            riskManager.setRootScore(i11);
            SensorInfo sensorInfo = SensorInfo.INSTANCE;
            sensorInfo.initGravity(this.$_context.element);
            if (sensorInfo.getGravityStatus()) {
                sensorInfo.registerListener();
            }
            this.label = 1;
            if (DelayKt.b(200L, this) == f10) {
                return f10;
            }
        }
        SensorInfo.INSTANCE.unRegisterListener();
        str = this.this$0.event;
        if (!Intrinsics.areEqual(str, "auto")) {
            TurboLinkDefaultEvent turboLinkDefaultEvent = TurboLinkDefaultEvent.INSTALL;
            List q10 = CollectionsKt.q(turboLinkDefaultEvent.getEvent(), TurboLinkDefaultEvent.OPEN.getEvent());
            str2 = this.this$0.event;
            if (q10.contains(str2)) {
                str3 = this.this$0.event;
                if (Intrinsics.areEqual(str3, turboLinkDefaultEvent.getEvent())) {
                    Ref.ObjectRef<ServerRequestSession> objectRef = this.$initRequest;
                    TurboLinkEvent.TurboLinkEventCallback turboLinkEventCallback = this.$_callback;
                    z12 = this.this$0.isAutoInitialization;
                    objectRef.element = new EventInstall(this.$_context.element, turboLinkEventCallback, z12);
                } else {
                    Ref.ObjectRef<ServerRequestSession> objectRef2 = this.$initRequest;
                    TurboLinkEvent.TurboLinkEventCallback turboLinkEventCallback2 = this.$_callback;
                    z11 = this.this$0.isAutoInitialization;
                    objectRef2.element = new EventOpen(this.$_context.element, turboLinkEventCallback2, z11);
                }
                this.$turboLink.initializeSession(this.$initRequest.element);
                return Unit.f60915a;
            }
        }
        Ref.ObjectRef<ServerRequestSession> objectRef3 = this.$initRequest;
        TurboLink turboLink = this.$turboLink;
        TurboLinkEvent.TurboLinkEventCallback turboLinkEventCallback3 = this.$_callback;
        z10 = this.this$0.isAutoInitialization;
        objectRef3.element = turboLink.getEventInstallOrOpenRequest(turboLinkEventCallback3, z10);
        this.$turboLink.initializeSession(this.$initRequest.element);
        return Unit.f60915a;
    }
}
