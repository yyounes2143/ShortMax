package io.bidmachine.ads.networks.adaptiverendering;

import io.bidmachine.NetworkAdapter;
import io.bidmachine.NetworkConfig;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: AdaptiveRenderingConfig.kt */
@Metadata
/* loaded from: classes7.dex */
public final class AdaptiveRenderingConfig extends NetworkConfig {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f53604a = new a(null);

    /* compiled from: AdaptiveRenderingConfig.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public AdaptiveRenderingConfig() {
        super("adaptive_rendering", null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.NetworkConfig
    @NotNull
    public NetworkAdapter createNetworkAdapter() {
        return new AdaptiveRenderingAdapter();
    }
}
