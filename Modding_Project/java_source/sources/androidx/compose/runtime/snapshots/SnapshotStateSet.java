package androidx.compose.runtime.snapshots;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.compose.runtime.Stable;
import androidx.compose.runtime.external.kotlinx.collections.immutable.ExtensionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.RandomAccess;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMutableSet;
import org.jetbrains.annotations.NotNull;
/* compiled from: SnapshotStateSet.android.kt */
@Metadata
@SuppressLint({"BanParcelableUsage"})
@Stable
@SourceDebugExtension({"SMAP\nSnapshotStateSet.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotStateSet.android.kt\nandroidx/compose/runtime/snapshots/SnapshotStateSet\n+ 2 Snapshot.kt\nandroidx/compose/runtime/snapshots/SnapshotKt\n+ 3 SnapshotStateSet.kt\nandroidx/compose/runtime/snapshots/SnapshotStateSetKt\n+ 4 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,142:1\n2474#2:143\n2474#2:153\n2364#2,2:164\n1893#2:166\n2366#2,4:167\n2474#2:187\n2364#2,2:198\n1893#2:200\n2366#2,4:201\n2364#2,2:214\n1893#2:216\n2366#2,2:218\n2369#2:224\n2474#2:236\n2364#2,2:247\n1893#2:249\n2366#2,4:250\n2474#2:270\n2364#2,2:281\n1893#2:283\n2366#2,4:284\n2474#2:296\n137#3,6:144\n143#3:151\n112#3:152\n144#3,9:154\n108#3:163\n153#3,6:172\n137#3,6:178\n143#3:185\n112#3:186\n144#3,9:188\n108#3:197\n153#3,6:206\n162#3:212\n108#3:213\n163#3,4:220\n168#3:226\n137#3,6:227\n143#3:234\n112#3:235\n144#3,9:237\n108#3:246\n153#3,6:255\n137#3,6:261\n143#3:268\n112#3:269\n144#3,9:271\n108#3:280\n153#3,6:289\n112#3:295\n33#4:150\n33#4:184\n33#4:217\n33#4:233\n33#4:267\n1#5:171\n1#5:205\n1#5:225\n1#5:254\n1#5:288\n*S KotlinDebug\n*F\n+ 1 SnapshotStateSet.android.kt\nandroidx/compose/runtime/snapshots/SnapshotStateSet\n*L\n77#1:143\n81#1:153\n81#1:164,2\n81#1:166\n81#1:167,4\n83#1:187\n83#1:198,2\n83#1:200\n83#1:201,4\n87#1:214,2\n87#1:216\n87#1:218,2\n87#1:224\n89#1:236\n89#1:247,2\n89#1:249\n89#1:250,4\n91#1:270\n91#1:281,2\n91#1:283\n91#1:284,4\n105#1:296\n81#1:144,6\n81#1:151\n81#1:152\n81#1:154,9\n81#1:163\n81#1:172,6\n83#1:178,6\n83#1:185\n83#1:186\n83#1:188,9\n83#1:197\n83#1:206,6\n87#1:212\n87#1:213\n87#1:220,4\n87#1:226\n89#1:227,6\n89#1:234\n89#1:235\n89#1:237,9\n89#1:246\n89#1:255,6\n91#1:261,6\n91#1:268\n91#1:269\n91#1:271,9\n91#1:280\n91#1:289,6\n105#1:295\n81#1:150\n83#1:184\n87#1:217\n89#1:233\n91#1:267\n81#1:171\n83#1:205\n87#1:225\n89#1:254\n91#1:288\n*E\n"})
/* loaded from: classes.dex */
public final class SnapshotStateSet<T> implements Parcelable, StateObject, Set<T>, RandomAccess, KMutableSet {
    public static final int $stable = 0;
    @NotNull
    private StateRecord firstStateRecord = SnapshotStateSetKt.stateRecordWith(this, ExtensionsKt.persistentSetOf());
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final Parcelable.Creator<SnapshotStateSet<Object>> CREATOR = new Parcelable.ClassLoaderCreator<SnapshotStateSet<Object>>() { // from class: androidx.compose.runtime.snapshots.SnapshotStateSet$Companion$CREATOR$1
        @Override // android.os.Parcelable.Creator
        public SnapshotStateSet<Object>[] newArray(int i10) {
            return new SnapshotStateSet[i10];
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.ClassLoaderCreator
        public SnapshotStateSet<Object> createFromParcel(Parcel parcel, ClassLoader classLoader) {
            SnapshotStateSet<Object> snapshotStateSet = new SnapshotStateSet<>();
            if (classLoader == null) {
                classLoader = SnapshotStateSet.class.getClassLoader();
            }
            int readInt = parcel.readInt();
            for (int i10 = 0; i10 < readInt; i10++) {
                snapshotStateSet.add(parcel.readValue(classLoader));
            }
            return snapshotStateSet;
        }

        @Override // android.os.Parcelable.Creator
        public SnapshotStateSet<Object> createFromParcel(Parcel parcel) {
            return createFromParcel(parcel, (ClassLoader) null);
        }
    };

    /* compiled from: SnapshotStateSet.android.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ void getCREATOR$annotations() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean retainAll$lambda$5(Collection collection, Set set) {
        return set.retainAll(CollectionsKt.i1(collection));
    }

    @Override // java.util.Set, java.util.Collection
    public boolean add(T t10) {
        int modification$runtime;
        PersistentSet<T> set$runtime;
        Snapshot current;
        boolean attemptUpdate;
        do {
            synchronized (SnapshotStateSetKt.access$getSync$p()) {
                StateRecord firstStateRecord = getFirstStateRecord();
                Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateSetStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateSetKt.withCurrent>");
                StateSetStateRecord stateSetStateRecord = (StateSetStateRecord) SnapshotKt.current((StateSetStateRecord) firstStateRecord);
                modification$runtime = stateSetStateRecord.getModification$runtime();
                set$runtime = stateSetStateRecord.getSet$runtime();
                Unit unit = Unit.f60915a;
            }
            Intrinsics.checkNotNull(set$runtime);
            PersistentSet<T> add = set$runtime.add((PersistentSet<T>) t10);
            if (Intrinsics.areEqual(add, set$runtime)) {
                return false;
            }
            StateRecord firstStateRecord2 = getFirstStateRecord();
            Intrinsics.checkNotNull(firstStateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateSetStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateSetKt.writable>");
            StateSetStateRecord stateSetStateRecord2 = (StateSetStateRecord) firstStateRecord2;
            synchronized (SnapshotKt.getLock()) {
                current = Snapshot.Companion.getCurrent();
                attemptUpdate = SnapshotStateSetKt.attemptUpdate((StateSetStateRecord) SnapshotKt.writableRecord(stateSetStateRecord2, this, current), modification$runtime, add);
            }
            SnapshotKt.notifyWrite(current, this);
        } while (!attemptUpdate);
        return true;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean addAll(@NotNull Collection<? extends T> collection) {
        int modification$runtime;
        PersistentSet<T> set$runtime;
        Snapshot current;
        boolean attemptUpdate;
        do {
            synchronized (SnapshotStateSetKt.access$getSync$p()) {
                StateRecord firstStateRecord = getFirstStateRecord();
                Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateSetStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateSetKt.withCurrent>");
                StateSetStateRecord stateSetStateRecord = (StateSetStateRecord) SnapshotKt.current((StateSetStateRecord) firstStateRecord);
                modification$runtime = stateSetStateRecord.getModification$runtime();
                set$runtime = stateSetStateRecord.getSet$runtime();
                Unit unit = Unit.f60915a;
            }
            Intrinsics.checkNotNull(set$runtime);
            PersistentSet<T> addAll = set$runtime.addAll(collection);
            if (Intrinsics.areEqual(addAll, set$runtime)) {
                return false;
            }
            StateRecord firstStateRecord2 = getFirstStateRecord();
            Intrinsics.checkNotNull(firstStateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateSetStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateSetKt.writable>");
            StateSetStateRecord stateSetStateRecord2 = (StateSetStateRecord) firstStateRecord2;
            synchronized (SnapshotKt.getLock()) {
                current = Snapshot.Companion.getCurrent();
                attemptUpdate = SnapshotStateSetKt.attemptUpdate((StateSetStateRecord) SnapshotKt.writableRecord(stateSetStateRecord2, this, current), modification$runtime, addAll);
            }
            SnapshotKt.notifyWrite(current, this);
        } while (!attemptUpdate);
        return true;
    }

    @Override // java.util.Set, java.util.Collection
    public void clear() {
        Snapshot current;
        StateRecord firstStateRecord = getFirstStateRecord();
        Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateSetStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateSetKt.writable>");
        StateSetStateRecord stateSetStateRecord = (StateSetStateRecord) firstStateRecord;
        synchronized (SnapshotKt.getLock()) {
            current = Snapshot.Companion.getCurrent();
            StateSetStateRecord stateSetStateRecord2 = (StateSetStateRecord) SnapshotKt.writableRecord(stateSetStateRecord, this, current);
            synchronized (SnapshotStateSetKt.access$getSync$p()) {
                stateSetStateRecord2.setSet$runtime(ExtensionsKt.persistentSetOf());
                stateSetStateRecord2.setModification$runtime(stateSetStateRecord2.getModification$runtime() + 1);
            }
        }
        SnapshotKt.notifyWrite(current, this);
    }

    @Override // java.util.Set, java.util.Collection
    public boolean contains(Object obj) {
        return SnapshotStateSetKt.getReadable(this).getSet$runtime().contains(obj);
    }

    @Override // java.util.Set, java.util.Collection
    public boolean containsAll(@NotNull Collection<?> collection) {
        return SnapshotStateSetKt.getReadable(this).getSet$runtime().containsAll(collection);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @NotNull
    public final Set<T> getDebuggerDisplayValue() {
        StateRecord firstStateRecord = getFirstStateRecord();
        Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateSetStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateSetKt.withCurrent>");
        return ((StateSetStateRecord) SnapshotKt.current((StateSetStateRecord) firstStateRecord)).getSet$runtime();
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    @NotNull
    public StateRecord getFirstStateRecord() {
        return this.firstStateRecord;
    }

    public int getSize() {
        return SnapshotStateSetKt.getReadable(this).getSet$runtime().size();
    }

    @Override // java.util.Set, java.util.Collection
    public boolean isEmpty() {
        return SnapshotStateSetKt.getReadable(this).getSet$runtime().isEmpty();
    }

    @Override // java.util.Set, java.util.Collection, java.lang.Iterable
    @NotNull
    public Iterator<T> iterator() {
        return new StateSetIterator(this, SnapshotStateSetKt.getReadable(this).getSet$runtime().iterator());
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public void prependStateRecord(@NotNull StateRecord stateRecord) {
        stateRecord.setNext$runtime(getFirstStateRecord());
        Intrinsics.checkNotNull(stateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateSetStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateSet>");
        this.firstStateRecord = (StateSetStateRecord) stateRecord;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean remove(Object obj) {
        int modification$runtime;
        PersistentSet<T> set$runtime;
        Snapshot current;
        boolean attemptUpdate;
        do {
            synchronized (SnapshotStateSetKt.access$getSync$p()) {
                StateRecord firstStateRecord = getFirstStateRecord();
                Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateSetStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateSetKt.withCurrent>");
                StateSetStateRecord stateSetStateRecord = (StateSetStateRecord) SnapshotKt.current((StateSetStateRecord) firstStateRecord);
                modification$runtime = stateSetStateRecord.getModification$runtime();
                set$runtime = stateSetStateRecord.getSet$runtime();
                Unit unit = Unit.f60915a;
            }
            Intrinsics.checkNotNull(set$runtime);
            PersistentSet<T> remove = set$runtime.remove((PersistentSet<T>) obj);
            if (Intrinsics.areEqual(remove, set$runtime)) {
                return false;
            }
            StateRecord firstStateRecord2 = getFirstStateRecord();
            Intrinsics.checkNotNull(firstStateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateSetStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateSetKt.writable>");
            StateSetStateRecord stateSetStateRecord2 = (StateSetStateRecord) firstStateRecord2;
            synchronized (SnapshotKt.getLock()) {
                current = Snapshot.Companion.getCurrent();
                attemptUpdate = SnapshotStateSetKt.attemptUpdate((StateSetStateRecord) SnapshotKt.writableRecord(stateSetStateRecord2, this, current), modification$runtime, remove);
            }
            SnapshotKt.notifyWrite(current, this);
        } while (!attemptUpdate);
        return true;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean removeAll(@NotNull Collection<?> collection) {
        int modification$runtime;
        PersistentSet<T> set$runtime;
        Snapshot current;
        boolean attemptUpdate;
        do {
            synchronized (SnapshotStateSetKt.access$getSync$p()) {
                StateRecord firstStateRecord = getFirstStateRecord();
                Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateSetStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateSetKt.withCurrent>");
                StateSetStateRecord stateSetStateRecord = (StateSetStateRecord) SnapshotKt.current((StateSetStateRecord) firstStateRecord);
                modification$runtime = stateSetStateRecord.getModification$runtime();
                set$runtime = stateSetStateRecord.getSet$runtime();
                Unit unit = Unit.f60915a;
            }
            Intrinsics.checkNotNull(set$runtime);
            PersistentSet<T> removeAll = set$runtime.removeAll((Collection<? extends T>) collection);
            if (Intrinsics.areEqual(removeAll, set$runtime)) {
                return false;
            }
            StateRecord firstStateRecord2 = getFirstStateRecord();
            Intrinsics.checkNotNull(firstStateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateSetStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateSetKt.writable>");
            StateSetStateRecord stateSetStateRecord2 = (StateSetStateRecord) firstStateRecord2;
            synchronized (SnapshotKt.getLock()) {
                current = Snapshot.Companion.getCurrent();
                attemptUpdate = SnapshotStateSetKt.attemptUpdate((StateSetStateRecord) SnapshotKt.writableRecord(stateSetStateRecord2, this, current), modification$runtime, removeAll);
            }
            SnapshotKt.notifyWrite(current, this);
        } while (!attemptUpdate);
        return true;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean retainAll(@NotNull final Collection<?> collection) {
        return SnapshotStateSetKt.mutateBoolean(this, new Function1() { // from class: androidx.compose.runtime.snapshots.n
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean retainAll$lambda$5;
                retainAll$lambda$5 = SnapshotStateSet.retainAll$lambda$5(collection, (Set) obj);
                return Boolean.valueOf(retainAll$lambda$5);
            }
        });
    }

    @Override // java.util.Set, java.util.Collection
    public final /* bridge */ int size() {
        return getSize();
    }

    @Override // java.util.Set, java.util.Collection
    public Object[] toArray() {
        return CollectionToArray.toArray(this);
    }

    @NotNull
    public final Set<T> toSet() {
        return SnapshotStateSetKt.getReadable(this).getSet$runtime();
    }

    @NotNull
    public String toString() {
        StateRecord firstStateRecord = getFirstStateRecord();
        Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateSetStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateSet>");
        return "SnapshotStateSet(value=" + ((StateSetStateRecord) SnapshotKt.current((StateSetStateRecord) firstStateRecord)).getSet$runtime() + ")@" + hashCode();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel parcel, int i10) {
        Set<T> set = toSet();
        parcel.writeInt(size());
        Iterator<T> it = set.iterator();
        if (it.hasNext()) {
            parcel.writeValue(it.next());
        }
    }

    @Override // java.util.Set, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        return (T[]) CollectionToArray.toArray(this, tArr);
    }

    public static /* synthetic */ void getDebuggerDisplayValue$annotations() {
    }
}
