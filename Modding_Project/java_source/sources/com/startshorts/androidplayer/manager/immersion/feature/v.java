package com.startshorts.androidplayer.manager.immersion.feature;

import android.os.Bundle;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.shorts.PlayResolution;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.manager.immersion.core.ImmersionJobsManager;
import com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SwitchResolutionTimeoutFeature.kt */
@Metadata
/* loaded from: classes6.dex */
public final class v implements IImmersionFeature {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f42664c = new a(null);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private ImmersionJobsManager f42665a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private b f42666b;

    /* compiled from: SwitchResolutionTimeoutFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: SwitchResolutionTimeoutFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public interface b {
        void a();
    }

    /* compiled from: SwitchResolutionTimeoutFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public /* synthetic */ class c {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[IImmersionFeature.MessageType.values().length];
            try {
                iArr[IImmersionFeature.MessageType.SWITCH_RESOLUTION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[IImmersionFeature.MessageType.SWITCH_RESOLUTION_SUCCESS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[IImmersionFeature.MessageType.SWITCH_EPISODE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[IImmersionFeature.MessageType.PLAYER_ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private final void d() {
        ImmersionJobsManager immersionJobsManager = this.f42665a;
        if (immersionJobsManager != null) {
            immersionJobsManager.b(ImmersionJobsManager.JobType.CATON_TOASTER);
            immersionJobsManager.b(ImmersionJobsManager.JobType.SWITCH_TIMEOUT);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit h() {
        Logger.f41511a.e("SwitchResolutionTimeoutFeature", "caton toast");
        fk.u.j(fk.u.f51776a, R$string.immersion_activity_resolution_loading_tip, 0, 2, null);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit i(BaseEpisode baseEpisode, v vVar, PlayResolution playResolution) {
        String sb2;
        Logger.f41511a.e("SwitchResolutionTimeoutFeature", "switch resolution timeout");
        EventManager eventManager = EventManager.f42463a;
        Bundle C = eventManager.C(baseEpisode);
        C.putString("status", "timeout");
        if (playResolution.isAuto()) {
            sb2 = "auto";
        } else {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(playResolution.getResolutionValue());
            sb3.append('p');
            sb2 = sb3.toString();
        }
        C.putString("clarity_level", sb2);
        C.putLong("duration", 30L);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "clarity_switch", C, 0L, 4, null);
        b bVar = vVar.f42666b;
        if (bVar != null) {
            bVar.a();
        }
        return Unit.f60915a;
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    public void a(@NotNull k message) {
        Object obj;
        int i10;
        final PlayResolution g10;
        PlayResolution i11;
        Intrinsics.checkNotNullParameter(message, "message");
        int i12 = c.$EnumSwitchMapping$0[message.b().ordinal()];
        boolean z10 = true;
        if (i12 != 1) {
            if (i12 == 2 || i12 == 3 || i12 == 4) {
                d();
                return;
            }
            return;
        }
        this.f42665a = f(message);
        HashMap<String, Object> a10 = message.a();
        Integer num = null;
        if (a10 != null) {
            obj = a10.get("switch_resolution_from");
        } else {
            obj = null;
        }
        if (obj instanceof Integer) {
            num = (Integer) obj;
        }
        if (num != null) {
            i10 = num.intValue();
        } else {
            i10 = -1;
        }
        if (i10 != 1) {
            z10 = false;
        }
        if (!z10) {
            d();
            return;
        }
        final BaseEpisode e10 = e(message);
        if (e10 == null || (g10 = g(message)) == null) {
            return;
        }
        if (g10.isAuto() && (i11 = pf.k.f64864a.i(e10)) != null) {
            g10 = i11;
        }
        ImmersionJobsManager immersionJobsManager = this.f42665a;
        if (immersionJobsManager != null) {
            ImmersionJobsManager.e(immersionJobsManager, ImmersionJobsManager.JobType.CATON_TOASTER, 5000L, null, new Function0() { // from class: hf.e0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit h10;
                    h10 = com.startshorts.androidplayer.manager.immersion.feature.v.h();
                    return h10;
                }
            }, 4, null);
        }
        ImmersionJobsManager immersionJobsManager2 = this.f42665a;
        if (immersionJobsManager2 != null) {
            ImmersionJobsManager.e(immersionJobsManager2, ImmersionJobsManager.JobType.SWITCH_TIMEOUT, 30000L, null, new Function0() { // from class: hf.f0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit i13;
                    i13 = com.startshorts.androidplayer.manager.immersion.feature.v.i(BaseEpisode.this, this, g10);
                    return i13;
                }
            }, 4, null);
        }
    }

    @Nullable
    public BaseEpisode e(@NotNull k kVar) {
        return IImmersionFeature.a.b(this, kVar);
    }

    @Nullable
    public ImmersionJobsManager f(@NotNull k kVar) {
        return IImmersionFeature.a.c(this, kVar);
    }

    @Nullable
    public PlayResolution g(@NotNull k kVar) {
        return IImmersionFeature.a.d(this, kVar);
    }

    public final void j(@Nullable b bVar) {
        this.f42666b = bVar;
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    @NotNull
    public IImmersionFeature.FeatureType type() {
        return IImmersionFeature.FeatureType.SWITCH_RESOLUTION_TIMEOUT;
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    public void release() {
    }
}
