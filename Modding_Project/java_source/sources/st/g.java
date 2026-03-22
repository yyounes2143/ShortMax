package st;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.lang.annotation.Annotation;
import java.util.List;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.reflect.KClass;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
import ut.d;
import ut.l;
/* compiled from: PolymorphicSerializer.kt */
@Metadata
/* loaded from: classes8.dex */
public final class g<T> extends vt.b<T> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final KClass<T> f66630a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private List<? extends Annotation> f66631b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final ms.i f66632c;

    public g(@NotNull KClass<T> baseClass) {
        Intrinsics.checkNotNullParameter(baseClass, "baseClass");
        this.f66630a = baseClass;
        this.f66631b = CollectionsKt.n();
        this.f66632c = kotlin.c.a(LazyThreadSafetyMode.PUBLICATION, new Function0() { // from class: st.e
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                SerialDescriptor h10;
                h10 = g.h(g.this);
                return h10;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SerialDescriptor h(final g gVar) {
        return ut.b.c(ut.k.h("kotlinx.serialization.Polymorphic", d.a.f68607a, new SerialDescriptor[0], new Function1() { // from class: st.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit i10;
                i10 = g.i(g.this, (ut.a) obj);
                return i10;
            }
        }), gVar.e());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit i(g gVar, ut.a buildSerialDescriptor) {
        Intrinsics.checkNotNullParameter(buildSerialDescriptor, "$this$buildSerialDescriptor");
        ut.a.b(buildSerialDescriptor, "type", tt.a.D(StringCompanionObject.INSTANCE).getDescriptor(), null, false, 12, null);
        ut.a.b(buildSerialDescriptor, AppMeasurementSdk.ConditionalUserProperty.VALUE, ut.k.i("kotlinx.serialization.Polymorphic<" + gVar.e().getSimpleName() + '>', l.a.f68626a, new SerialDescriptor[0], null, 8, null), null, false, 12, null);
        buildSerialDescriptor.h(gVar.f66631b);
        return Unit.f60915a;
    }

    @Override // vt.b
    @NotNull
    public KClass<T> e() {
        return this.f66630a;
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return (SerialDescriptor) this.f66632c.getValue();
    }

    @NotNull
    public String toString() {
        return "kotlinx.serialization.PolymorphicSerializer(baseClass: " + e() + ')';
    }
}
