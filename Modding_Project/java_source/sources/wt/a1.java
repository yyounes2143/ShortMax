package wt;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.json.JsonElement;
import org.jetbrains.annotations.NotNull;
import ut.l;
/* compiled from: TreeJsonEncoder.kt */
@Metadata
/* loaded from: classes8.dex */
public final class a1 {
    public static final /* synthetic */ boolean b(SerialDescriptor serialDescriptor) {
        return c(serialDescriptor);
    }

    public static final boolean c(SerialDescriptor serialDescriptor) {
        if (!(serialDescriptor.getKind() instanceof ut.e) && serialDescriptor.getKind() != l.b.f68627a) {
            return false;
        }
        return true;
    }

    @NotNull
    public static final <T> JsonElement d(@NotNull kotlinx.serialization.json.a json, T t10, @NotNull st.l<? super T> serializer) {
        Intrinsics.checkNotNullParameter(json, "json");
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        new k0(json, new Function1() { // from class: wt.z0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit e10;
                e10 = a1.e(Ref.ObjectRef.this, (JsonElement) obj);
                return e10;
            }
        }).encodeSerializableValue(serializer, t10);
        T t11 = objectRef.element;
        if (t11 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("result");
            return null;
        }
        return (JsonElement) t11;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit e(Ref.ObjectRef objectRef, JsonElement it) {
        Intrinsics.checkNotNullParameter(it, "it");
        objectRef.element = it;
        return Unit.f60915a;
    }
}
