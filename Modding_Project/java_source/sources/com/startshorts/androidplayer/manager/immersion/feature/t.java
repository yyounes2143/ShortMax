package com.startshorts.androidplayer.manager.immersion.feature;

import com.startshorts.androidplayer.manager.account.AccountManager;
import com.startshorts.androidplayer.manager.immersion.core.ImmersionJobsManager;
import com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SubsProRenewFeature.kt */
@Metadata
/* loaded from: classes6.dex */
public final class t implements IImmersionFeature {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f42662a = new a(null);

    /* compiled from: SubsProRenewFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: SubsProRenewFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public /* synthetic */ class b {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[IImmersionFeature.MessageType.values().length];
            try {
                iArr[IImmersionFeature.MessageType.ACTIVITY_ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit d(int i10) {
        AccountManager.f41533a.v();
        return Unit.f60915a;
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    public void a(@NotNull k message) {
        ImmersionJobsManager c10;
        Intrinsics.checkNotNullParameter(message, "message");
        if (b.$EnumSwitchMapping$0[message.b().ordinal()] == 1 && (c10 = c(message)) != null && AccountRepo.f43052a.B0()) {
            ImmersionJobsManager.g(c10, ImmersionJobsManager.JobType.SUBS_PRO_RENEW, 30000L, null, new Function1() { // from class: hf.d0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit d10;
                    d10 = com.startshorts.androidplayer.manager.immersion.feature.t.d(((Integer) obj).intValue());
                    return d10;
                }
            }, 4, null);
        }
    }

    @Nullable
    public ImmersionJobsManager c(@NotNull k kVar) {
        return IImmersionFeature.a.c(this, kVar);
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    @NotNull
    public IImmersionFeature.FeatureType type() {
        return IImmersionFeature.FeatureType.SUBS_PRO_RENEW;
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    public void release() {
    }
}
