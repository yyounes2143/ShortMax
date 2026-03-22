package io.ktor.utils.io;

import gt.w;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.AbstractMap;
import java.util.Comparator;
import java.util.WeakHashMap;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ExceptionUtilsJvm.kt */
@Metadata
@SourceDebugExtension({"SMAP\nExceptionUtilsJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExceptionUtilsJvm.kt\nio/ktor/utils/io/ExceptionUtilsJvmKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,101:1\n90#1:104\n90#1:105\n90#1:106\n90#1:107\n1#2:102\n6523#3:103\n12904#3,3:108\n*S KotlinDebug\n*F\n+ 1 ExceptionUtilsJvm.kt\nio/ktor/utils/io/ExceptionUtilsJvmKt\n*L\n74#1:104\n79#1:105\n81#1:106\n84#1:107\n59#1:103\n96#1:108,3\n*E\n"})
/* loaded from: classes8.dex */
public final class ExceptionUtilsJvmKt {

    /* renamed from: a  reason: collision with root package name */
    private static final int f59498a = d(Throwable.class, -1);
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final ReentrantReadWriteLock f59499b = new ReentrantReadWriteLock();
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final WeakHashMap<Class<? extends Throwable>, Function1<Throwable, Throwable>> f59500c = new WeakHashMap<>();

    /* compiled from: Comparisons.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareByDescending$1\n+ 2 ExceptionUtilsJvm.kt\nio/ktor/utils/io/ExceptionUtilsJvmKt\n*L\n1#1,328:1\n59#2:329\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class a<T> implements Comparator {
        @Override // java.util.Comparator
        public final int compare(T t10, T t11) {
            return ps.a.a(Integer.valueOf(((Constructor) t11).getParameterTypes().length), Integer.valueOf(((Constructor) t10).getParameterTypes().length));
        }
    }

    private static final Function1<Throwable, Throwable> a(final Constructor<?> constructor) {
        Class<?>[] parameterTypes = constructor.getParameterTypes();
        int length = parameterTypes.length;
        if (length != 0) {
            if (length != 1) {
                if (length != 2 || !Intrinsics.areEqual(parameterTypes[0], String.class) || !Intrinsics.areEqual(parameterTypes[1], Throwable.class)) {
                    return null;
                }
                return new Function1<Throwable, Throwable>() { // from class: io.ktor.utils.io.ExceptionUtilsJvmKt$createConstructor$$inlined$safeCtor$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @Nullable
                    /* renamed from: b */
                    public final Throwable invoke(@NotNull Throwable e10) {
                        Object d10;
                        Intrinsics.checkNotNullParameter(e10, "e");
                        try {
                            Result.a aVar = Result.f60901b;
                            Object newInstance = constructor.newInstance(e10.getMessage(), e10);
                            Intrinsics.checkNotNull(newInstance, "null cannot be cast to non-null type kotlin.Throwable");
                            d10 = Result.d((Throwable) newInstance);
                        } catch (Throwable th2) {
                            Result.a aVar2 = Result.f60901b;
                            d10 = Result.d(kotlin.f.a(th2));
                        }
                        if (Result.i(d10)) {
                            d10 = null;
                        }
                        return (Throwable) d10;
                    }
                };
            }
            Class<?> cls = parameterTypes[0];
            if (Intrinsics.areEqual(cls, Throwable.class)) {
                return new Function1<Throwable, Throwable>() { // from class: io.ktor.utils.io.ExceptionUtilsJvmKt$createConstructor$$inlined$safeCtor$2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @Nullable
                    /* renamed from: b */
                    public final Throwable invoke(@NotNull Throwable e10) {
                        Object d10;
                        Intrinsics.checkNotNullParameter(e10, "e");
                        try {
                            Result.a aVar = Result.f60901b;
                            Object newInstance = constructor.newInstance(e10);
                            Intrinsics.checkNotNull(newInstance, "null cannot be cast to non-null type kotlin.Throwable");
                            d10 = Result.d((Throwable) newInstance);
                        } catch (Throwable th2) {
                            Result.a aVar2 = Result.f60901b;
                            d10 = Result.d(kotlin.f.a(th2));
                        }
                        if (Result.i(d10)) {
                            d10 = null;
                        }
                        return (Throwable) d10;
                    }
                };
            }
            if (!Intrinsics.areEqual(cls, String.class)) {
                return null;
            }
            return new Function1<Throwable, Throwable>() { // from class: io.ktor.utils.io.ExceptionUtilsJvmKt$createConstructor$$inlined$safeCtor$3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @Nullable
                /* renamed from: b */
                public final Throwable invoke(@NotNull Throwable e10) {
                    Object d10;
                    Intrinsics.checkNotNullParameter(e10, "e");
                    try {
                        Result.a aVar = Result.f60901b;
                        Object newInstance = constructor.newInstance(e10.getMessage());
                        Intrinsics.checkNotNull(newInstance, "null cannot be cast to non-null type kotlin.Throwable");
                        Throwable th2 = (Throwable) newInstance;
                        th2.initCause(e10);
                        d10 = Result.d(th2);
                    } catch (Throwable th3) {
                        Result.a aVar2 = Result.f60901b;
                        d10 = Result.d(kotlin.f.a(th3));
                    }
                    if (Result.i(d10)) {
                        d10 = null;
                    }
                    return (Throwable) d10;
                }
            };
        }
        return new Function1<Throwable, Throwable>() { // from class: io.ktor.utils.io.ExceptionUtilsJvmKt$createConstructor$$inlined$safeCtor$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @Nullable
            /* renamed from: b */
            public final Throwable invoke(@NotNull Throwable e10) {
                Object d10;
                Intrinsics.checkNotNullParameter(e10, "e");
                try {
                    Result.a aVar = Result.f60901b;
                    Object newInstance = constructor.newInstance(new Object[0]);
                    Intrinsics.checkNotNull(newInstance, "null cannot be cast to non-null type kotlin.Throwable");
                    Throwable th2 = (Throwable) newInstance;
                    th2.initCause(e10);
                    d10 = Result.d(th2);
                } catch (Throwable th3) {
                    Result.a aVar2 = Result.f60901b;
                    d10 = Result.d(kotlin.f.a(th3));
                }
                if (Result.i(d10)) {
                    d10 = null;
                }
                return (Throwable) d10;
            }
        };
    }

    private static final int b(Class<?> cls, int i10) {
        do {
            Field[] declaredFields = cls.getDeclaredFields();
            Intrinsics.checkNotNullExpressionValue(declaredFields, "declaredFields");
            int i11 = 0;
            for (Field field : declaredFields) {
                if (!Modifier.isStatic(field.getModifiers())) {
                    i11++;
                }
            }
            i10 += i11;
            cls = cls.getSuperclass();
        } while (cls != null);
        return i10;
    }

    static /* synthetic */ int c(Class cls, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 0;
        }
        return b(cls, i10);
    }

    private static final int d(Class<?> cls, int i10) {
        Integer d10;
        zs.a.d(cls);
        try {
            Result.a aVar = Result.f60901b;
            d10 = Result.d(Integer.valueOf(c(cls, 0, 1, null)));
        } catch (Throwable th2) {
            Result.a aVar2 = Result.f60901b;
            d10 = Result.d(kotlin.f.a(th2));
        }
        Integer valueOf = Integer.valueOf(i10);
        if (Result.i(d10)) {
            d10 = valueOf;
        }
        return ((Number) d10).intValue();
    }

    @Nullable
    public static final <E extends Throwable> E e(@NotNull E exception, @NotNull Throwable cause) {
        Object d10;
        int i10;
        Function1<Throwable, Throwable> function1;
        int i11;
        Intrinsics.checkNotNullParameter(exception, "exception");
        Intrinsics.checkNotNullParameter(cause, "cause");
        Object obj = null;
        if (exception instanceof w) {
            try {
                Result.a aVar = Result.f60901b;
                d10 = Result.d(((w) exception).b());
            } catch (Throwable th2) {
                Result.a aVar2 = Result.f60901b;
                d10 = Result.d(kotlin.f.a(th2));
            }
            if (!Result.i(d10)) {
                obj = d10;
            }
            return (E) obj;
        }
        ReentrantReadWriteLock reentrantReadWriteLock = f59499b;
        ReentrantReadWriteLock.ReadLock readLock = reentrantReadWriteLock.readLock();
        readLock.lock();
        try {
            Function1<Throwable, Throwable> function12 = f59500c.get(exception.getClass());
            if (function12 != null) {
                return (E) function12.invoke(exception);
            }
            int i12 = 0;
            if (f59498a != d(exception.getClass(), 0)) {
                ReentrantReadWriteLock.ReadLock readLock2 = reentrantReadWriteLock.readLock();
                if (reentrantReadWriteLock.getWriteHoldCount() == 0) {
                    i11 = reentrantReadWriteLock.getReadHoldCount();
                } else {
                    i11 = 0;
                }
                for (int i13 = 0; i13 < i11; i13++) {
                    readLock2.unlock();
                }
                ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
                writeLock.lock();
                try {
                    f59500c.put(exception.getClass(), new Function1() { // from class: io.ktor.utils.io.ExceptionUtilsJvmKt$tryCopyException$4$1
                        @Override // kotlin.jvm.functions.Function1
                        @Nullable
                        /* renamed from: b */
                        public final Void invoke(@NotNull Throwable it) {
                            Intrinsics.checkNotNullParameter(it, "it");
                            return null;
                        }
                    });
                    Unit unit = Unit.f60915a;
                    return null;
                } finally {
                    while (i12 < i11) {
                        readLock2.lock();
                        i12++;
                    }
                    writeLock.unlock();
                }
            }
            Constructor<?>[] constructors = exception.getClass().getConstructors();
            Intrinsics.checkNotNullExpressionValue(constructors, "exception.javaClass.constructors");
            Function1<Throwable, Throwable> function13 = null;
            for (Constructor constructor : kotlin.collections.n.o1(constructors, new a())) {
                Intrinsics.checkNotNullExpressionValue(constructor, "constructor");
                function13 = a(constructor);
                if (function13 != null) {
                    break;
                }
            }
            ReentrantReadWriteLock reentrantReadWriteLock2 = f59499b;
            ReentrantReadWriteLock.ReadLock readLock3 = reentrantReadWriteLock2.readLock();
            if (reentrantReadWriteLock2.getWriteHoldCount() == 0) {
                i10 = reentrantReadWriteLock2.getReadHoldCount();
            } else {
                i10 = 0;
            }
            for (int i14 = 0; i14 < i10; i14++) {
                readLock3.unlock();
            }
            ReentrantReadWriteLock.WriteLock writeLock2 = reentrantReadWriteLock2.writeLock();
            writeLock2.lock();
            try {
                AbstractMap abstractMap = f59500c;
                Class<?> cls = exception.getClass();
                if (function13 == null) {
                    function1 = new Function1() { // from class: io.ktor.utils.io.ExceptionUtilsJvmKt$tryCopyException$5$1
                        @Override // kotlin.jvm.functions.Function1
                        @Nullable
                        /* renamed from: b */
                        public final Void invoke(@NotNull Throwable it) {
                            Intrinsics.checkNotNullParameter(it, "it");
                            return null;
                        }
                    };
                } else {
                    function1 = function13;
                }
                abstractMap.put(cls, function1);
                Unit unit2 = Unit.f60915a;
                while (i12 < i10) {
                    readLock3.lock();
                    i12++;
                }
                writeLock2.unlock();
                if (function13 == null) {
                    return null;
                }
                return (E) function13.invoke(cause);
            } catch (Throwable th3) {
                while (i12 < i10) {
                    readLock3.lock();
                    i12++;
                }
                writeLock2.unlock();
                throw th3;
            }
        } finally {
            readLock.unlock();
        }
    }
}
