package kotlinx.serialization.modules;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SerializersModule.kt */
@Metadata
/* loaded from: classes8.dex */
public abstract class a {

    /* compiled from: SerializersModule.kt */
    @Metadata
    /* renamed from: kotlinx.serialization.modules.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static final class C0858a extends a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final KSerializer<?> f62016a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0858a(@NotNull KSerializer<?> serializer) {
            super(null);
            Intrinsics.checkNotNullParameter(serializer, "serializer");
            this.f62016a = serializer;
        }

        @Override // kotlinx.serialization.modules.a
        @NotNull
        public KSerializer<?> a(@NotNull List<? extends KSerializer<?>> typeArgumentsSerializers) {
            Intrinsics.checkNotNullParameter(typeArgumentsSerializers, "typeArgumentsSerializers");
            return this.f62016a;
        }

        @NotNull
        public final KSerializer<?> b() {
            return this.f62016a;
        }

        public boolean equals(@Nullable Object obj) {
            if ((obj instanceof C0858a) && Intrinsics.areEqual(((C0858a) obj).f62016a, this.f62016a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f62016a.hashCode();
        }
    }

    /* compiled from: SerializersModule.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class b extends a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final Function1<List<? extends KSerializer<?>>, KSerializer<?>> f62017a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public b(@NotNull Function1<? super List<? extends KSerializer<?>>, ? extends KSerializer<?>> provider) {
            super(null);
            Intrinsics.checkNotNullParameter(provider, "provider");
            this.f62017a = provider;
        }

        @Override // kotlinx.serialization.modules.a
        @NotNull
        public KSerializer<?> a(@NotNull List<? extends KSerializer<?>> typeArgumentsSerializers) {
            Intrinsics.checkNotNullParameter(typeArgumentsSerializers, "typeArgumentsSerializers");
            return this.f62017a.invoke(typeArgumentsSerializers);
        }

        @NotNull
        public final Function1<List<? extends KSerializer<?>>, KSerializer<?>> b() {
            return this.f62017a;
        }
    }

    public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @NotNull
    public abstract KSerializer<?> a(@NotNull List<? extends KSerializer<?>> list);

    private a() {
    }
}
