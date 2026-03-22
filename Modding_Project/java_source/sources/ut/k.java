package ut;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
import ut.m;
import vt.o2;
/* compiled from: SerialDescriptors.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSerialDescriptors.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SerialDescriptors.kt\nkotlinx/serialization/descriptors/SerialDescriptorsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,366:1\n1#2:367\n*E\n"})
/* loaded from: classes8.dex */
public final class k {
    @NotNull
    public static final SerialDescriptor c(@NotNull String serialName, @NotNull e kind) {
        Intrinsics.checkNotNullParameter(serialName, "serialName");
        Intrinsics.checkNotNullParameter(kind, "kind");
        if (!StringsKt.t0(serialName)) {
            return o2.a(serialName, kind);
        }
        throw new IllegalArgumentException("Blank serial names are prohibited");
    }

    @NotNull
    public static final SerialDescriptor d(@NotNull String serialName, @NotNull SerialDescriptor original) {
        Intrinsics.checkNotNullParameter(serialName, "serialName");
        Intrinsics.checkNotNullParameter(original, "original");
        if (!StringsKt.t0(serialName)) {
            if (!(original.getKind() instanceof e)) {
                if (!Intrinsics.areEqual(serialName, original.h())) {
                    return new n(serialName, original);
                }
                throw new IllegalArgumentException(("The name of the wrapped descriptor (" + serialName + ") cannot be the same as the name of the original descriptor (" + original.h() + ')').toString());
            }
            throw new IllegalArgumentException("For primitive descriptors please use 'PrimitiveSerialDescriptor' instead");
        }
        throw new IllegalArgumentException("Blank serial names are prohibited");
    }

    @NotNull
    public static final SerialDescriptor e(@NotNull String serialName, @NotNull SerialDescriptor[] typeParameters, @NotNull Function1<? super a, Unit> builderAction) {
        Intrinsics.checkNotNullParameter(serialName, "serialName");
        Intrinsics.checkNotNullParameter(typeParameters, "typeParameters");
        Intrinsics.checkNotNullParameter(builderAction, "builderAction");
        if (!StringsKt.t0(serialName)) {
            a aVar = new a(serialName);
            builderAction.invoke(aVar);
            return new kotlinx.serialization.descriptors.a(serialName, m.a.f68628a, aVar.f().size(), kotlin.collections.n.x1(typeParameters), aVar);
        }
        throw new IllegalArgumentException("Blank serial names are prohibited");
    }

    public static /* synthetic */ SerialDescriptor f(String str, SerialDescriptor[] serialDescriptorArr, Function1 function1, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            function1 = new Function1() { // from class: ut.i
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    Unit g10;
                    g10 = k.g((a) obj2);
                    return g10;
                }
            };
        }
        return e(str, serialDescriptorArr, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit g(a aVar) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        return Unit.f60915a;
    }

    @NotNull
    public static final SerialDescriptor h(@NotNull String serialName, @NotNull l kind, @NotNull SerialDescriptor[] typeParameters, @NotNull Function1<? super a, Unit> builder) {
        Intrinsics.checkNotNullParameter(serialName, "serialName");
        Intrinsics.checkNotNullParameter(kind, "kind");
        Intrinsics.checkNotNullParameter(typeParameters, "typeParameters");
        Intrinsics.checkNotNullParameter(builder, "builder");
        if (!StringsKt.t0(serialName)) {
            if (!Intrinsics.areEqual(kind, m.a.f68628a)) {
                a aVar = new a(serialName);
                builder.invoke(aVar);
                return new kotlinx.serialization.descriptors.a(serialName, kind, aVar.f().size(), kotlin.collections.n.x1(typeParameters), aVar);
            }
            throw new IllegalArgumentException("For StructureKind.CLASS please use 'buildClassSerialDescriptor' instead");
        }
        throw new IllegalArgumentException("Blank serial names are prohibited");
    }

    public static /* synthetic */ SerialDescriptor i(String str, l lVar, SerialDescriptor[] serialDescriptorArr, Function1 function1, int i10, Object obj) {
        if ((i10 & 8) != 0) {
            function1 = new Function1() { // from class: ut.j
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    Unit j10;
                    j10 = k.j((a) obj2);
                    return j10;
                }
            };
        }
        return h(str, lVar, serialDescriptorArr, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit j(a aVar) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        return Unit.f60915a;
    }
}
