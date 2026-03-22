package androidx.compose.runtime.reflect;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.internal.StabilityInferred;
import java.lang.reflect.Method;
import java.lang.reflect.Parameter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.m0;
import kotlin.collections.n;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntRange;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ComposableMethod.jvm.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nComposableMethod.jvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ComposableMethod.jvm.kt\nandroidx/compose/runtime/reflect/ComposableMethod\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,206:1\n1557#2:207\n1628#2,3:208\n1812#2,4:211\n1#3:215\n*S KotlinDebug\n*F\n+ 1 ComposableMethod.jvm.kt\nandroidx/compose/runtime/reflect/ComposableMethod\n*L\n126#1:207\n126#1:208,3\n127#1:211,4\n*E\n"})
/* loaded from: classes.dex */
public final class ComposableMethod {
    public static final int $stable = 8;
    @NotNull
    private final ComposableInfo composableInfo;
    @NotNull
    private final Method method;

    public ComposableMethod(@NotNull Method method, @NotNull ComposableInfo composableInfo) {
        this.method = method;
        this.composableInfo = composableInfo;
    }

    @NotNull
    public final Method asMethod() {
        return this.method;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof ComposableMethod) {
            return Intrinsics.areEqual(this.method, ((ComposableMethod) obj).method);
        }
        return false;
    }

    public final int getParameterCount() {
        return this.composableInfo.getRealParamsCount();
    }

    @NotNull
    public final Class<?>[] getParameterTypes() {
        return (Class[]) n.y(this.method.getParameterTypes(), 0, this.composableInfo.getRealParamsCount());
    }

    @NotNull
    public final Parameter[] getParameters() {
        Parameter[] parameters;
        parameters = this.method.getParameters();
        return (Parameter[]) n.y(parameters, 0, this.composableInfo.getRealParamsCount());
    }

    public int hashCode() {
        return this.method.hashCode();
    }

    @Nullable
    public final Object invoke(@NotNull Composer composer, @Nullable Object obj, @NotNull Object... objArr) {
        Object obj2;
        int i10;
        ComposableInfo composableInfo = this.composableInfo;
        int component2 = composableInfo.component2();
        int component3 = composableInfo.component3();
        int component4 = composableInfo.component4();
        int length = this.method.getParameterTypes().length;
        int i11 = component2 + 1;
        int i12 = component3 + i11;
        Object[] objArr2 = new Integer[component4];
        for (int i13 = 0; i13 < component4; i13++) {
            int i14 = i13 * 31;
            IntRange v10 = e.v(i14, Math.min(i14 + 31, component2));
            ArrayList arrayList = new ArrayList(CollectionsKt.z(v10, 10));
            Iterator<Integer> it = v10.iterator();
            while (it.hasNext()) {
                int nextInt = ((m0) it).nextInt();
                if (nextInt < objArr.length && objArr[nextInt] != null) {
                    i10 = 0;
                } else {
                    i10 = 1;
                }
                arrayList.add(Integer.valueOf(i10));
            }
            int i15 = 0;
            int i16 = 0;
            for (Object obj3 : arrayList) {
                int i17 = i16 + 1;
                if (i16 < 0) {
                    CollectionsKt.y();
                }
                i15 |= ((Number) obj3).intValue() << i16;
                i16 = i17;
            }
            objArr2[i13] = Integer.valueOf(i15);
        }
        Object[] objArr3 = new Object[length];
        for (int i18 = 0; i18 < length; i18++) {
            if (i18 >= 0 && i18 < component2) {
                if (i18 < 0 || i18 >= objArr.length) {
                    obj2 = ComposableMethodKt.getDefaultValue(this.method.getParameterTypes()[i18]);
                } else {
                    obj2 = objArr[i18];
                }
            } else if (i18 == component2) {
                obj2 = composer;
            } else if (i18 == i11 || (component2 + 2 <= i18 && i18 < i12)) {
                obj2 = 0;
            } else if (i12 <= i18 && i18 < length) {
                obj2 = objArr2[i18 - i12];
            } else {
                throw new IllegalStateException("Unexpected index");
            }
            objArr3[i18] = obj2;
        }
        return this.method.invoke(obj, Arrays.copyOf(objArr3, length));
    }
}
