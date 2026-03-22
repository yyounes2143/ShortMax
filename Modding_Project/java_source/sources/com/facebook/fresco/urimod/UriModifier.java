package com.facebook.fresco.urimod;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: UriModifier.kt */
@Metadata
/* loaded from: classes3.dex */
public final class UriModifier {
    @NotNull
    public static final UriModifier INSTANCE = new UriModifier();
    @NotNull

    /* renamed from: INSTANCE  reason: collision with other field name */
    public static UriModifierInterface f21INSTANCE = NopUriModifier.INSTANCE;

    private UriModifier() {
    }
}
