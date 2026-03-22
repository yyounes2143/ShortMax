package androidx.collection;

import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMutableIterator;
import kotlin.sequences.i;
import kotlin.sequences.j;
import rs.c;
/* JADX INFO: Add missing generic type declarations: [V, K] */
/* compiled from: ScatterMap.kt */
@Metadata
/* loaded from: classes.dex */
public final class MutableEntries$iterator$1<K, V> implements Iterator<Map.Entry<K, V>>, KMutableIterator {
    private int current = -1;
    private Iterator<? extends Map.Entry<K, V>> iterator;
    final /* synthetic */ MutableEntries<K, V> this$0;

    /* compiled from: ScatterMap.kt */
    @Metadata
    @d(c = "androidx.collection.MutableEntries$iterator$1$1", f = "ScatterMap.kt", l = {1538}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nScatterMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScatterMap.kt\nandroidx/collection/MutableEntries$iterator$1$1\n+ 2 ScatterMap.kt\nandroidx/collection/ScatterMap\n+ 3 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n*L\n1#1,1787:1\n329#2,6:1788\n339#2,3:1795\n342#2,9:1799\n1399#3:1794\n1270#3:1798\n*S KotlinDebug\n*F\n+ 1 ScatterMap.kt\nandroidx/collection/MutableEntries$iterator$1$1\n*L\n1536#1:1788,6\n1536#1:1795,3\n1536#1:1799,9\n1536#1:1794\n1536#1:1798\n*E\n"})
    /* renamed from: androidx.collection.MutableEntries$iterator$1$1  reason: invalid class name */
    /* loaded from: classes.dex */
    static final class AnonymousClass1 extends RestrictedSuspendLambda implements Function2<i<? super Map.Entry<K, V>>, c<? super Unit>, Object> {
        int I$0;
        int I$1;
        int I$2;
        int I$3;
        long J$0;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        final /* synthetic */ MutableEntries<K, V> this$0;
        final /* synthetic */ MutableEntries$iterator$1 this$1;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(MutableEntries<K, V> mutableEntries, MutableEntries$iterator$1 mutableEntries$iterator$1, c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.this$0 = mutableEntries;
            this.this$1 = mutableEntries$iterator$1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final c<Unit> create(Object obj, c<?> cVar) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.this$1, cVar);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, c<? super Unit> cVar) {
            return invoke((i) ((i) obj), cVar);
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0060  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0078  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x00c0  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x00cd  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x00d0  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0060 -> B:14:0x0076). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x00b5 -> B:20:0x00b8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x00bb -> B:22:0x00bc). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x00cd -> B:27:0x00ce). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r23) {
            /*
                Method dump skipped, instructions count: 216
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.collection.MutableEntries$iterator$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        public final Object invoke(i<? super Map.Entry<K, V>> iVar, c<? super Unit> cVar) {
            return ((AnonymousClass1) create(iVar, cVar)).invokeSuspend(Unit.f60915a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MutableEntries$iterator$1(MutableEntries<K, V> mutableEntries) {
        this.this$0 = mutableEntries;
        this.iterator = j.a(new AnonymousClass1(mutableEntries, this, null));
    }

    public final int getCurrent() {
        return this.current;
    }

    public final Iterator<Map.Entry<K, V>> getIterator() {
        return (Iterator<? extends Map.Entry<K, V>>) this.iterator;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.iterator.hasNext();
    }

    @Override // java.util.Iterator
    public void remove() {
        MutableScatterMap mutableScatterMap;
        if (this.current != -1) {
            mutableScatterMap = ((MutableEntries) this.this$0).parent;
            mutableScatterMap.removeValueAt(this.current);
            this.current = -1;
        }
    }

    public final void setCurrent(int i10) {
        this.current = i10;
    }

    public final void setIterator(Iterator<? extends Map.Entry<K, V>> it) {
        Intrinsics.checkNotNullParameter(it, "<set-?>");
        this.iterator = it;
    }

    @Override // java.util.Iterator
    public Map.Entry<K, V> next() {
        return this.iterator.next();
    }
}
