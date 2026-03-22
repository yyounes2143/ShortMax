package com.facebook.fresco.urimod;

import android.net.Uri;
import c3.q;
import com.facebook.common.callercontext.ContextChain;
import com.facebook.fresco.urimod.UriModifierInterface;
import com.facebook.fresco.vito.source.UriImageSource;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: NopUriModifier.kt */
@Metadata
/* loaded from: classes3.dex */
public final class NopUriModifier implements UriModifierInterface {
    @NotNull
    public static final NopUriModifier INSTANCE = new NopUriModifier();

    private NopUriModifier() {
    }

    @Override // com.facebook.fresco.urimod.UriModifierInterface
    @NotNull
    public Uri modifyPrefetchUri(@NotNull Uri uri, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        return uri;
    }

    @Override // com.facebook.fresco.urimod.UriModifierInterface
    @NotNull
    public UriModifierInterface.ModificationResult modifyUri(@NotNull UriImageSource imageSource, @Nullable Dimensions dimensions, @Nullable q qVar, @Nullable Object obj, @Nullable ContextChain contextChain, boolean z10) {
        Intrinsics.checkNotNullParameter(imageSource, "imageSource");
        return new UriModifierInterface.ModificationResult.Disabled("NopUriModifier");
    }

    @Override // com.facebook.fresco.urimod.UriModifierInterface
    public void unregisterReverseFallbackUri(@NotNull Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "uri");
    }
}
