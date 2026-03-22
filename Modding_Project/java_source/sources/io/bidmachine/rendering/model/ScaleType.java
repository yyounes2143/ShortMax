package io.bidmachine.rendering.model;

import com.google.android.gms.fido.fido2.api.common.DevicePublicKeyStringDef;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yq.k;
import yq.s;
@Metadata
/* loaded from: classes8.dex */
public enum ScaleType implements k {
    None(DevicePublicKeyStringDef.NONE),
    ToFill("to_fill"),
    AspectFill("aspect_fill"),
    AspectFit("aspect_fit");
    
    @NotNull
    public static final a Companion = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f58560a;

    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final ScaleType a(@Nullable String str) {
            return (ScaleType) s.k(ScaleType.values(), str);
        }

        private a() {
        }
    }

    ScaleType(String str) {
        this.f58560a = str;
    }

    @Nullable
    public static final ScaleType get(@Nullable String str) {
        return Companion.a(str);
    }

    @Override // yq.k
    @NotNull
    public String getKey() {
        return this.f58560a;
    }
}
