package vt;

import java.lang.Enum;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Enums.kt */
@Metadata
@SourceDebugExtension({"SMAP\nEnums.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Enums.kt\nkotlinx/serialization/internal/EnumSerializer\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,148:1\n13409#2,2:149\n*S KotlinDebug\n*F\n+ 1 Enums.kt\nkotlinx/serialization/internal/EnumSerializer\n*L\n120#1:149,2\n*E\n"})
/* loaded from: classes8.dex */
public final class i0<T extends Enum<T>> implements KSerializer<T> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final T[] f69443a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private SerialDescriptor f69444b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final ms.i f69445c;

    public i0(@NotNull final String serialName, @NotNull T[] values) {
        Intrinsics.checkNotNullParameter(serialName, "serialName");
        Intrinsics.checkNotNullParameter(values, "values");
        this.f69443a = values;
        this.f69445c = kotlin.c.b(new Function0() { // from class: vt.h0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                SerialDescriptor c10;
                c10 = i0.c(i0.this, serialName);
                return c10;
            }
        });
    }

    private final SerialDescriptor b(String str) {
        g0 g0Var = new g0(str, this.f69443a.length);
        for (T t10 : this.f69443a) {
            h2.p(g0Var, t10.name(), false, 2, null);
        }
        return g0Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SerialDescriptor c(i0 i0Var, String str) {
        SerialDescriptor serialDescriptor = i0Var.f69444b;
        if (serialDescriptor == null) {
            return i0Var.b(str);
        }
        return serialDescriptor;
    }

    @Override // st.c
    @NotNull
    /* renamed from: d */
    public T deserialize(@NotNull Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        int decodeEnum = decoder.decodeEnum(getDescriptor());
        if (decodeEnum >= 0) {
            T[] tArr = this.f69443a;
            if (decodeEnum < tArr.length) {
                return tArr[decodeEnum];
            }
        }
        throw new SerializationException(decodeEnum + " is not among valid " + getDescriptor().h() + " enum values, values size is " + this.f69443a.length);
    }

    @Override // st.l
    /* renamed from: e */
    public void serialize(@NotNull Encoder encoder, @NotNull T value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        int y02 = kotlin.collections.n.y0(this.f69443a, value);
        if (y02 != -1) {
            encoder.encodeEnum(getDescriptor(), y02);
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(value);
        sb2.append(" is not a valid enum ");
        sb2.append(getDescriptor().h());
        sb2.append(", must be one of ");
        String arrays = Arrays.toString(this.f69443a);
        Intrinsics.checkNotNullExpressionValue(arrays, "toString(...)");
        sb2.append(arrays);
        throw new SerializationException(sb2.toString());
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return (SerialDescriptor) this.f69445c.getValue();
    }

    @NotNull
    public String toString() {
        return "kotlinx.serialization.internal.EnumSerializer<" + getDescriptor().h() + '>';
    }
}
