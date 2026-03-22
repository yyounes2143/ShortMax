package io.bidmachine.rendering.model;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yq.k;
import yq.s;
@Metadata
/* loaded from: classes8.dex */
public enum CacheType implements k {
    FullLoad("full_load"),
    PartialLoad("partial_load"),
    StreamLoad("stream_load");
    
    @NotNull
    public static final a Companion = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f58530a;

    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final CacheType a(@Nullable String str) {
            return (CacheType) s.k(CacheType.values(), str);
        }

        private a() {
        }
    }

    CacheType(String str) {
        this.f58530a = str;
    }

    @Nullable
    public static final CacheType get(@Nullable String str) {
        return Companion.a(str);
    }

    @Override // yq.k
    @NotNull
    public String getKey() {
        return this.f58530a;
    }
}
