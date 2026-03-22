package com.google.protobuf;

import com.google.protobuf.Internal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* compiled from: ListFieldSchema.java */
/* loaded from: classes5.dex */
abstract class r {
    private static final r FULL_INSTANCE = new b();
    private static final r LITE_INSTANCE = new c();

    /* compiled from: ListFieldSchema.java */
    /* loaded from: classes5.dex */
    private static final class b extends r {
        private static final Class<?> UNMODIFIABLE_LIST_CLASS = Collections.unmodifiableList(Collections.emptyList()).getClass();

        private b() {
            super();
        }

        static <E> List<E> getList(Object obj, long j10) {
            return (List) s0.getObject(obj, j10);
        }

        @Override // com.google.protobuf.r
        void makeImmutableListAt(Object obj, long j10) {
            Object unmodifiableList;
            List list = (List) s0.getObject(obj, j10);
            if (list instanceof LazyStringList) {
                unmodifiableList = ((LazyStringList) list).getUnmodifiableView();
            } else if (UNMODIFIABLE_LIST_CLASS.isAssignableFrom(list.getClass())) {
                return;
            } else {
                if ((list instanceof g0) && (list instanceof Internal.ProtobufList)) {
                    Internal.ProtobufList protobufList = (Internal.ProtobufList) list;
                    if (protobufList.isModifiable()) {
                        protobufList.makeImmutable();
                        return;
                    }
                    return;
                }
                unmodifiableList = Collections.unmodifiableList(list);
            }
            s0.putObject(obj, j10, unmodifiableList);
        }

        @Override // com.google.protobuf.r
        <E> void mergeListsAt(Object obj, Object obj2, long j10) {
            List list = getList(obj2, j10);
            List mutableListAt = mutableListAt(obj, j10, list.size());
            int size = mutableListAt.size();
            int size2 = list.size();
            if (size > 0 && size2 > 0) {
                mutableListAt.addAll(list);
            }
            if (size > 0) {
                list = mutableListAt;
            }
            s0.putObject(obj, j10, list);
        }

        @Override // com.google.protobuf.r
        <L> List<L> mutableListAt(Object obj, long j10) {
            return mutableListAt(obj, j10, 10);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private static <L> List<L> mutableListAt(Object obj, long j10, int i10) {
            LazyStringArrayList lazyStringArrayList;
            List<L> arrayList;
            List<L> list = getList(obj, j10);
            if (list.isEmpty()) {
                if (list instanceof LazyStringList) {
                    arrayList = new LazyStringArrayList(i10);
                } else if ((list instanceof g0) && (list instanceof Internal.ProtobufList)) {
                    arrayList = ((Internal.ProtobufList) list).mutableCopyWithCapacity(i10);
                } else {
                    arrayList = new ArrayList<>(i10);
                }
                s0.putObject(obj, j10, arrayList);
                return arrayList;
            }
            if (UNMODIFIABLE_LIST_CLASS.isAssignableFrom(list.getClass())) {
                ArrayList arrayList2 = new ArrayList(list.size() + i10);
                arrayList2.addAll(list);
                s0.putObject(obj, j10, arrayList2);
                lazyStringArrayList = arrayList2;
            } else if (list instanceof UnmodifiableLazyStringList) {
                LazyStringArrayList lazyStringArrayList2 = new LazyStringArrayList(list.size() + i10);
                lazyStringArrayList2.addAll((UnmodifiableLazyStringList) list);
                s0.putObject(obj, j10, lazyStringArrayList2);
                lazyStringArrayList = lazyStringArrayList2;
            } else if ((list instanceof g0) && (list instanceof Internal.ProtobufList)) {
                Internal.ProtobufList protobufList = (Internal.ProtobufList) list;
                if (protobufList.isModifiable()) {
                    return list;
                }
                Internal.ProtobufList mutableCopyWithCapacity = protobufList.mutableCopyWithCapacity(list.size() + i10);
                s0.putObject(obj, j10, mutableCopyWithCapacity);
                return mutableCopyWithCapacity;
            } else {
                return list;
            }
            return lazyStringArrayList;
        }
    }

    /* compiled from: ListFieldSchema.java */
    /* loaded from: classes5.dex */
    private static final class c extends r {
        private c() {
            super();
        }

        static <E> Internal.ProtobufList<E> getProtobufList(Object obj, long j10) {
            return (Internal.ProtobufList) s0.getObject(obj, j10);
        }

        @Override // com.google.protobuf.r
        void makeImmutableListAt(Object obj, long j10) {
            getProtobufList(obj, j10).makeImmutable();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v2, types: [java.util.List] */
        @Override // com.google.protobuf.r
        <E> void mergeListsAt(Object obj, Object obj2, long j10) {
            Internal.ProtobufList<E> protobufList = getProtobufList(obj, j10);
            Internal.ProtobufList<E> protobufList2 = getProtobufList(obj2, j10);
            int size = protobufList.size();
            int size2 = protobufList2.size();
            Internal.ProtobufList<E> protobufList3 = protobufList;
            protobufList3 = protobufList;
            if (size > 0 && size2 > 0) {
                boolean isModifiable = protobufList.isModifiable();
                Internal.ProtobufList<E> protobufList4 = protobufList;
                if (!isModifiable) {
                    protobufList4 = protobufList.mutableCopyWithCapacity(size2 + size);
                }
                protobufList4.addAll(protobufList2);
                protobufList3 = protobufList4;
            }
            if (size > 0) {
                protobufList2 = protobufList3;
            }
            s0.putObject(obj, j10, protobufList2);
        }

        @Override // com.google.protobuf.r
        <L> List<L> mutableListAt(Object obj, long j10) {
            int i10;
            Internal.ProtobufList protobufList = getProtobufList(obj, j10);
            if (!protobufList.isModifiable()) {
                int size = protobufList.size();
                if (size == 0) {
                    i10 = 10;
                } else {
                    i10 = size * 2;
                }
                Internal.ProtobufList mutableCopyWithCapacity = protobufList.mutableCopyWithCapacity(i10);
                s0.putObject(obj, j10, mutableCopyWithCapacity);
                return mutableCopyWithCapacity;
            }
            return protobufList;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static r full() {
        return FULL_INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static r lite() {
        return LITE_INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void makeImmutableListAt(Object obj, long j10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract <L> void mergeListsAt(Object obj, Object obj2, long j10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract <L> List<L> mutableListAt(Object obj, long j10);

    private r() {
    }
}
