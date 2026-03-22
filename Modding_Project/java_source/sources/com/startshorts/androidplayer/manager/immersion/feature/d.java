package com.startshorts.androidplayer.manager.immersion.feature;

import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.immersion.core.ImmersionJobsManager;
import com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CatonToasterFeature.kt */
@Metadata
/* loaded from: classes6.dex */
public final class d implements IImmersionFeature {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f42600b = new a(null);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private ImmersionJobsManager f42601a;

    /* compiled from: CatonToasterFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: CatonToasterFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public /* synthetic */ class b {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[IImmersionFeature.MessageType.values().length];
            try {
                iArr[IImmersionFeature.MessageType.PLAYER_BUFFER_START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[IImmersionFeature.MessageType.PLAYER_BUFFER_END.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[IImmersionFeature.MessageType.SWITCH_EPISODE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[IImmersionFeature.MessageType.SWITCH_RESOLUTION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[IImmersionFeature.MessageType.PLAYER_PAUSED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[IImmersionFeature.MessageType.PLAYER_ERROR.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit d() {
        Logger.f41511a.e("CatonToasterFeature", "caton toast");
        fk.u.j(fk.u.f51776a, R$string.immersion_activity_resolution_loading_tip, 0, 2, null);
        return Unit.f60915a;
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    public void a(@NotNull k message) {
        ImmersionJobsManager immersionJobsManager;
        Intrinsics.checkNotNullParameter(message, "message");
        switch (b.$EnumSwitchMapping$0[message.b().ordinal()]) {
            case 1:
                ImmersionJobsManager c10 = c(message);
                this.f42601a = c10;
                if (c10 != null) {
                    ImmersionJobsManager.e(c10, ImmersionJobsManager.JobType.CATON_TOASTER, 5000L, null, new Function0() { // from class: hf.h
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            Unit d10;
                            d10 = com.startshorts.androidplayer.manager.immersion.feature.d.d();
                            return d10;
                        }
                    }, 4, null);
                    return;
                }
                return;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                ImmersionJobsManager immersionJobsManager2 = this.f42601a;
                if (immersionJobsManager2 != null) {
                    immersionJobsManager2.b(ImmersionJobsManager.JobType.CATON_TOASTER);
                }
                if (!n.f42638l.a() && (immersionJobsManager = this.f42601a) != null) {
                    immersionJobsManager.b(ImmersionJobsManager.JobType.DOWNGRADE_RESOLUTION_WHEN_CATON);
                    return;
                }
                return;
            default:
                return;
        }
    }

    @Nullable
    public ImmersionJobsManager c(@NotNull k kVar) {
        return IImmersionFeature.a.c(this, kVar);
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    @NotNull
    public IImmersionFeature.FeatureType type() {
        return IImmersionFeature.FeatureType.CATON_TOASTER;
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    public void release() {
    }
}
