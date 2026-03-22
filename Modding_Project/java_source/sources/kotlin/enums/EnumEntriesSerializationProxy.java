package kotlin.enums;

import java.io.Serializable;
import java.lang.Enum;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: EnumEntriesSerializationProxy.kt */
@Metadata
/* loaded from: classes8.dex */
public final class EnumEntriesSerializationProxy<E extends Enum<E>> implements Serializable {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final a f61058b = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Class<E> f61059a;

    /* compiled from: EnumEntriesSerializationProxy.kt */
    @Metadata
    /* loaded from: classes8.dex */
    private static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public EnumEntriesSerializationProxy(@NotNull E[] entries) {
        Intrinsics.checkNotNullParameter(entries, "entries");
        Class<E> cls = (Class<E>) entries.getClass().getComponentType();
        Intrinsics.checkNotNull(cls);
        this.f61059a = cls;
    }

    private final Object readResolve() {
        E[] enumConstants = this.f61059a.getEnumConstants();
        Intrinsics.checkNotNullExpressionValue(enumConstants, "getEnumConstants(...)");
        return kotlin.enums.a.a(enumConstants);
    }
}
