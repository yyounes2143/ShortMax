package io.bidmachine.rendering.model;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yq.k;
import yq.s;
@Metadata
/* loaded from: classes8.dex */
public enum AnimationFunctionType implements k {
    Linear("linear"),
    EaseIn("ease_in"),
    EaseOut("ease_out"),
    EaseInOut("ease_in_out");
    
    @NotNull
    public static final a Companion = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f58524a;

    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final AnimationFunctionType a(@Nullable String str) {
            return (AnimationFunctionType) s.k(AnimationFunctionType.values(), str);
        }

        private a() {
        }
    }

    AnimationFunctionType(String str) {
        this.f58524a = str;
    }

    @Nullable
    public static final AnimationFunctionType get(@Nullable String str) {
        return Companion.a(str);
    }

    @Override // yq.k
    @NotNull
    public String getKey() {
        return this.f58524a;
    }
}
