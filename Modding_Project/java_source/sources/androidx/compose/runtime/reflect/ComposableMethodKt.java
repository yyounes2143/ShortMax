package androidx.compose.runtime.reflect;

import androidx.compose.runtime.Composer;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.adjust.sdk.Constants;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.m0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.SpreadBuilder;
import kotlin.ranges.IntRange;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ComposableMethod.jvm.kt */
@Metadata
@SourceDebugExtension({"SMAP\nComposableMethod.jvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ComposableMethod.jvm.kt\nandroidx/compose/runtime/reflect/ComposableMethodKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,206:1\n170#1:219\n170#1:226\n170#1:233\n1790#2,6:207\n1557#3:213\n1628#3,3:214\n1557#3:220\n1628#3,3:221\n1557#3:227\n1628#3,3:228\n1557#3:234\n1628#3,3:235\n37#4,2:217\n37#4,2:224\n37#4,2:231\n37#4,2:238\n*S KotlinDebug\n*F\n+ 1 ComposableMethod.jvm.kt\nandroidx/compose/runtime/reflect/ComposableMethodKt\n*L\n187#1:219\n196#1:226\n197#1:233\n53#1:207,6\n170#1:213\n170#1:214,3\n187#1:220\n187#1:221,3\n196#1:227\n196#1:228,3\n197#1:234\n197#1:235,3\n170#1:217,2\n187#1:224,2\n196#1:231,2\n197#1:238,2\n*E\n"})
/* loaded from: classes.dex */
public final class ComposableMethodKt {
    private static final int BITS_PER_INT = 31;

    @Nullable
    public static final ComposableMethod asComposableMethod(@NotNull Method method) {
        ComposableInfo composableInfo = getComposableInfo(method);
        if (composableInfo.isComposable()) {
            return new ComposableMethod(method, composableInfo);
        }
        return null;
    }

    private static final int changedParamCount(int i10, int i11) {
        if (i10 == 0) {
            return 1;
        }
        return (int) Math.ceil((i10 + i11) / 10.0d);
    }

    private static final int defaultParamCount(int i10) {
        return (int) Math.ceil(i10 / 31.0d);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static final /* synthetic */ <T> T[] dup(T t10, int i10) {
        IntRange v10 = e.v(0, i10);
        ArrayList arrayList = new ArrayList(CollectionsKt.z(v10, 10));
        Iterator<Integer> it = v10.iterator();
        while (it.hasNext()) {
            ((m0) it).nextInt();
            arrayList.add(t10);
        }
        Intrinsics.reifiedOperationMarker(0, "T?");
        return (T[]) arrayList.toArray(new Object[0]);
    }

    private static final ComposableInfo getComposableInfo(Method method) {
        int i10;
        Class<?>[] parameterTypes = method.getParameterTypes();
        int length = parameterTypes.length - 1;
        if (length >= 0) {
            while (true) {
                int i11 = length - 1;
                if (Intrinsics.areEqual(parameterTypes[length], Composer.class)) {
                    break;
                } else if (i11 < 0) {
                    break;
                } else {
                    length = i11;
                }
            }
        }
        length = -1;
        boolean z10 = false;
        if (length == -1) {
            return new ComposableInfo(false, method.getParameterTypes().length, 0, 0);
        }
        int changedParamCount = changedParamCount(length, !Modifier.isStatic(method.getModifiers()) ? 1 : 0);
        int i12 = length + 1 + changedParamCount;
        int length2 = method.getParameterTypes().length;
        if (length2 != i12) {
            i10 = defaultParamCount(length);
        } else {
            i10 = 0;
        }
        if (i12 + i10 == length2) {
            z10 = true;
        }
        return new ComposableInfo(z10, length, changedParamCount, i10);
    }

    @NotNull
    public static final ComposableMethod getDeclaredComposableMethod(@NotNull Class<?> cls, @NotNull String str, @NotNull Class<?>... clsArr) throws NoSuchMethodException {
        Method method;
        int changedParamCount = changedParamCount(clsArr.length, 0);
        try {
            SpreadBuilder spreadBuilder = new SpreadBuilder(3);
            spreadBuilder.addSpread(clsArr);
            spreadBuilder.add(Composer.class);
            Class cls2 = Integer.TYPE;
            IntRange v10 = e.v(0, changedParamCount);
            ArrayList arrayList = new ArrayList(CollectionsKt.z(v10, 10));
            Iterator<Integer> it = v10.iterator();
            while (it.hasNext()) {
                ((m0) it).nextInt();
                arrayList.add(cls2);
            }
            spreadBuilder.addSpread(arrayList.toArray(new Class[0]));
            method = cls.getDeclaredMethod(str, (Class[]) spreadBuilder.toArray(new Class[spreadBuilder.size()]));
        } catch (ReflectiveOperationException unused) {
            int defaultParamCount = defaultParamCount(clsArr.length);
            try {
                SpreadBuilder spreadBuilder2 = new SpreadBuilder(4);
                spreadBuilder2.addSpread(clsArr);
                spreadBuilder2.add(Composer.class);
                Class cls3 = Integer.TYPE;
                IntRange v11 = e.v(0, changedParamCount);
                ArrayList arrayList2 = new ArrayList(CollectionsKt.z(v11, 10));
                Iterator<Integer> it2 = v11.iterator();
                while (it2.hasNext()) {
                    ((m0) it2).nextInt();
                    arrayList2.add(cls3);
                }
                spreadBuilder2.addSpread(arrayList2.toArray(new Class[0]));
                Class cls4 = Integer.TYPE;
                IntRange v12 = e.v(0, defaultParamCount);
                ArrayList arrayList3 = new ArrayList(CollectionsKt.z(v12, 10));
                Iterator<Integer> it3 = v12.iterator();
                while (it3.hasNext()) {
                    ((m0) it3).nextInt();
                    arrayList3.add(cls4);
                }
                spreadBuilder2.addSpread(arrayList3.toArray(new Class[0]));
                method = cls.getDeclaredMethod(str, (Class[]) spreadBuilder2.toArray(new Class[spreadBuilder2.size()]));
            } catch (ReflectiveOperationException unused2) {
                method = null;
            }
        }
        if (method != null) {
            ComposableMethod asComposableMethod = asComposableMethod(method);
            Intrinsics.checkNotNull(asComposableMethod);
            return asComposableMethod;
        }
        throw new NoSuchMethodException(cls.getName() + '.' + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object getDefaultValue(Class<?> cls) {
        String name = cls.getName();
        switch (name.hashCode()) {
            case -1325958191:
                if (name.equals("double")) {
                    return Double.valueOf(0.0d);
                }
                break;
            case 104431:
                if (name.equals("int")) {
                    return 0;
                }
                break;
            case 3039496:
                if (name.equals("byte")) {
                    return (byte) 0;
                }
                break;
            case 3052374:
                if (name.equals("char")) {
                    return (char) 0;
                }
                break;
            case 3327612:
                if (name.equals(Constants.LONG)) {
                    return 0L;
                }
                break;
            case 64711720:
                if (name.equals(TypedValues.Custom.S_BOOLEAN)) {
                    return Boolean.FALSE;
                }
                break;
            case 97526364:
                if (name.equals(TypedValues.Custom.S_FLOAT)) {
                    return Float.valueOf(0.0f);
                }
                break;
            case 109413500:
                if (name.equals("short")) {
                    return (short) 0;
                }
                break;
        }
        return null;
    }
}
