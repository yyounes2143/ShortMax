package io.bidmachine.rendering.model;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yq.k;
import yq.s;
@Metadata
/* loaded from: classes8.dex */
public enum Orientation implements k {
    Portrait("portrait", 7),
    Landscape("landscape", 6);
    
    @NotNull
    public static final a Companion = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f58549a;

    /* renamed from: b  reason: collision with root package name */
    private final int f58550b;

    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final Orientation a(@Nullable String str) {
            return (Orientation) s.k(Orientation.values(), str);
        }

        private a() {
        }
    }

    Orientation(String str, int i10) {
        this.f58549a = str;
        this.f58550b = i10;
    }

    @Nullable
    public static final Orientation get(@Nullable String str) {
        return Companion.a(str);
    }

    public final int getActivityOrientation() {
        return this.f58550b;
    }

    @Override // yq.k
    @NotNull
    public String getKey() {
        return this.f58549a;
    }
}
