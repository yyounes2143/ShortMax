package tt;

import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Triple;
import kotlin.Unit;
import kotlin.jvm.internal.BooleanCompanionObject;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.jvm.internal.CharCompanionObject;
import kotlin.jvm.internal.DoubleCompanionObject;
import kotlin.jvm.internal.FloatCompanionObject;
import kotlin.jvm.internal.IntCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.jvm.internal.ShortCompanionObject;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.reflect.KClass;
import kotlin.time.b;
import kotlin.uuid.Uuid;
import kotlinx.serialization.KSerializer;
import ms.l;
import ms.m;
import ms.n;
import ms.o;
import ms.p;
import ms.s;
import ms.t;
import org.jetbrains.annotations.NotNull;
import vt.a1;
import vt.b0;
import vt.c0;
import vt.c3;
import vt.d0;
import vt.f;
import vt.f1;
import vt.f3;
import vt.g1;
import vt.g3;
import vt.h;
import vt.i;
import vt.i1;
import vt.i3;
import vt.j3;
import vt.k;
import vt.k0;
import vt.l0;
import vt.l3;
import vt.m3;
import vt.o3;
import vt.p2;
import vt.p3;
import vt.q;
import vt.q3;
import vt.r;
import vt.r1;
import vt.r3;
import vt.s1;
import vt.u0;
import vt.u2;
import vt.v0;
import vt.v2;
import vt.w2;
import vt.x1;
/* compiled from: BuiltinSerializers.kt */
@Metadata
/* loaded from: classes8.dex */
public final class a {
    @NotNull
    public static final KSerializer<Integer> A(@NotNull IntCompanionObject intCompanionObject) {
        Intrinsics.checkNotNullParameter(intCompanionObject, "<this>");
        return v0.f69529a;
    }

    @NotNull
    public static final KSerializer<Long> B(@NotNull LongCompanionObject longCompanionObject) {
        Intrinsics.checkNotNullParameter(longCompanionObject, "<this>");
        return g1.f69417a;
    }

    @NotNull
    public static final KSerializer<Short> C(@NotNull ShortCompanionObject shortCompanionObject) {
        Intrinsics.checkNotNullParameter(shortCompanionObject, "<this>");
        return v2.f69534a;
    }

    @NotNull
    public static final KSerializer<String> D(@NotNull StringCompanionObject stringCompanionObject) {
        Intrinsics.checkNotNullParameter(stringCompanionObject, "<this>");
        return w2.f69539a;
    }

    @NotNull
    public static final KSerializer<b> E(@NotNull b.a aVar) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        return d0.f69389a;
    }

    @NotNull
    public static final KSerializer<Uuid> F(@NotNull Uuid.a aVar) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        return r3.f69509a;
    }

    @NotNull
    public static final KSerializer<l> G(@NotNull l.a aVar) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        return g3.f69420a;
    }

    @NotNull
    public static final KSerializer<n> H(@NotNull n.a aVar) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        return j3.f69459a;
    }

    @NotNull
    public static final KSerializer<p> I(@NotNull p.a aVar) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        return m3.f69476a;
    }

    @NotNull
    public static final KSerializer<s> J(@NotNull s.a aVar) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        return p3.f69492a;
    }

    @NotNull
    public static final <T, E extends T> KSerializer<E[]> a(@NotNull KClass<T> kClass, @NotNull KSerializer<E> elementSerializer) {
        Intrinsics.checkNotNullParameter(kClass, "kClass");
        Intrinsics.checkNotNullParameter(elementSerializer, "elementSerializer");
        return new p2(kClass, elementSerializer);
    }

    @NotNull
    public static final KSerializer<boolean[]> b() {
        return h.f69422c;
    }

    @NotNull
    public static final KSerializer<byte[]> c() {
        return k.f69461c;
    }

    @NotNull
    public static final KSerializer<char[]> d() {
        return q.f69494c;
    }

    @NotNull
    public static final KSerializer<double[]> e() {
        return b0.f69379c;
    }

    @NotNull
    public static final KSerializer<float[]> f() {
        return k0.f69462c;
    }

    @NotNull
    public static final KSerializer<int[]> g() {
        return u0.f69526c;
    }

    @NotNull
    public static final <T> KSerializer<List<T>> h(@NotNull KSerializer<T> elementSerializer) {
        Intrinsics.checkNotNullParameter(elementSerializer, "elementSerializer");
        return new f(elementSerializer);
    }

    @NotNull
    public static final KSerializer<long[]> i() {
        return f1.f69410c;
    }

    @NotNull
    public static final <K, V> KSerializer<Map.Entry<K, V>> j(@NotNull KSerializer<K> keySerializer, @NotNull KSerializer<V> valueSerializer) {
        Intrinsics.checkNotNullParameter(keySerializer, "keySerializer");
        Intrinsics.checkNotNullParameter(valueSerializer, "valueSerializer");
        return new i1(keySerializer, valueSerializer);
    }

    @NotNull
    public static final <K, V> KSerializer<Map<K, V>> k(@NotNull KSerializer<K> keySerializer, @NotNull KSerializer<V> valueSerializer) {
        Intrinsics.checkNotNullParameter(keySerializer, "keySerializer");
        Intrinsics.checkNotNullParameter(valueSerializer, "valueSerializer");
        return new a1(keySerializer, valueSerializer);
    }

    @NotNull
    public static final KSerializer l() {
        return r1.f69507a;
    }

    @NotNull
    public static final <K, V> KSerializer<Pair<K, V>> m(@NotNull KSerializer<K> keySerializer, @NotNull KSerializer<V> valueSerializer) {
        Intrinsics.checkNotNullParameter(keySerializer, "keySerializer");
        Intrinsics.checkNotNullParameter(valueSerializer, "valueSerializer");
        return new x1(keySerializer, valueSerializer);
    }

    @NotNull
    public static final KSerializer<short[]> n() {
        return u2.f69528c;
    }

    @NotNull
    public static final <A, B, C> KSerializer<Triple<A, B, C>> o(@NotNull KSerializer<A> aSerializer, @NotNull KSerializer<B> bSerializer, @NotNull KSerializer<C> cSerializer) {
        Intrinsics.checkNotNullParameter(aSerializer, "aSerializer");
        Intrinsics.checkNotNullParameter(bSerializer, "bSerializer");
        Intrinsics.checkNotNullParameter(cSerializer, "cSerializer");
        return new c3(aSerializer, bSerializer, cSerializer);
    }

    @NotNull
    public static final KSerializer<m> p() {
        return f3.f69412c;
    }

    @NotNull
    public static final KSerializer<o> q() {
        return i3.f69449c;
    }

    @NotNull
    public static final KSerializer<ms.q> r() {
        return l3.f69473c;
    }

    @NotNull
    public static final KSerializer<t> s() {
        return o3.f69485c;
    }

    @NotNull
    public static final <T> KSerializer<T> t(@NotNull KSerializer<T> kSerializer) {
        Intrinsics.checkNotNullParameter(kSerializer, "<this>");
        if (!kSerializer.getDescriptor().b()) {
            return new s1(kSerializer);
        }
        return kSerializer;
    }

    @NotNull
    public static final KSerializer<Unit> u(@NotNull Unit unit) {
        Intrinsics.checkNotNullParameter(unit, "<this>");
        return q3.f69502b;
    }

    @NotNull
    public static final KSerializer<Boolean> v(@NotNull BooleanCompanionObject booleanCompanionObject) {
        Intrinsics.checkNotNullParameter(booleanCompanionObject, "<this>");
        return i.f69441a;
    }

    @NotNull
    public static final KSerializer<Byte> w(@NotNull ByteCompanionObject byteCompanionObject) {
        Intrinsics.checkNotNullParameter(byteCompanionObject, "<this>");
        return vt.l.f69467a;
    }

    @NotNull
    public static final KSerializer<Character> x(@NotNull CharCompanionObject charCompanionObject) {
        Intrinsics.checkNotNullParameter(charCompanionObject, "<this>");
        return r.f69504a;
    }

    @NotNull
    public static final KSerializer<Double> y(@NotNull DoubleCompanionObject doubleCompanionObject) {
        Intrinsics.checkNotNullParameter(doubleCompanionObject, "<this>");
        return c0.f69382a;
    }

    @NotNull
    public static final KSerializer<Float> z(@NotNull FloatCompanionObject floatCompanionObject) {
        Intrinsics.checkNotNullParameter(floatCompanionObject, "<this>");
        return l0.f69469a;
    }
}
