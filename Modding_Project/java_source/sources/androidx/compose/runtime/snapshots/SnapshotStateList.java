package androidx.compose.runtime.snapshots;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.compose.runtime.PreconditionsKt;
import androidx.compose.runtime.Stable;
import androidx.compose.runtime.external.kotlinx.collections.immutable.ExtensionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMutableList;
import org.jetbrains.annotations.NotNull;
/* compiled from: SnapshotStateList.android.kt */
@Metadata
@SuppressLint({"BanParcelableUsage"})
@Stable
@SourceDebugExtension({"SMAP\nSnapshotStateList.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotStateList.android.kt\nandroidx/compose/runtime/snapshots/SnapshotStateList\n+ 2 Preconditions.kt\nandroidx/compose/runtime/PreconditionsKt\n+ 3 Snapshot.kt\nandroidx/compose/runtime/snapshots/SnapshotKt\n+ 4 SnapshotStateList.kt\nandroidx/compose/runtime/snapshots/SnapshotStateListKt\n+ 5 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,188:1\n34#2,4:189\n2474#3:193\n2474#3:206\n2364#3,2:217\n1893#3:219\n2366#3,4:220\n2474#3:245\n2364#3,2:256\n1893#3:258\n2366#3,4:259\n2474#3:283\n2364#3,2:294\n1893#3:296\n2366#3,4:297\n2364#3,2:310\n1893#3:312\n2366#3,2:314\n2369#3:321\n2474#3:336\n2364#3,2:347\n1893#3:349\n2366#3,4:350\n2474#3:373\n2364#3,2:384\n1893#3:386\n2366#3,4:387\n2474#3:413\n2364#3,2:424\n1893#3:426\n2366#3,4:427\n2474#3:450\n2364#3,2:461\n1893#3:463\n2366#3,4:464\n2474#3:484\n2364#3,2:495\n1893#3:497\n2366#3,4:498\n2474#3:514\n2364#3,2:525\n1893#3:527\n2366#3,4:528\n2474#3:537\n160#4,9:194\n169#4:204\n115#4:205\n170#4,9:207\n111#4:216\n179#4,6:225\n142#4,5:231\n163#4,6:236\n169#4:243\n115#4:244\n170#4,9:246\n111#4:255\n179#4,6:264\n147#4:270\n160#4,9:271\n169#4:281\n115#4:282\n170#4,9:284\n111#4:293\n179#4,6:302\n151#4:308\n111#4:309\n152#4,5:316\n158#4:323\n160#4,9:324\n169#4:334\n115#4:335\n170#4,9:337\n111#4:346\n179#4,6:355\n160#4,9:361\n169#4:371\n115#4:372\n170#4,9:374\n111#4:383\n179#4,6:392\n142#4,5:399\n163#4,6:404\n169#4:411\n115#4:412\n170#4,9:414\n111#4:423\n179#4,6:432\n147#4:438\n146#4:440\n163#4,6:441\n169#4:448\n115#4:449\n170#4,9:451\n111#4:460\n179#4,6:469\n147#4:475\n121#4,5:476\n126#4:482\n115#4:483\n127#4,9:485\n111#4:494\n137#4,3:503\n121#4,5:506\n126#4:512\n115#4:513\n127#4,9:515\n111#4:524\n137#4,3:533\n115#4:536\n33#5:203\n33#5:242\n33#5:280\n33#5:313\n33#5:333\n33#5:370\n33#5:410\n33#5:447\n33#5:481\n33#5:511\n1#6:224\n1#6:263\n1#6:301\n1#6:322\n1#6:354\n1#6:391\n1#6:398\n1#6:431\n1#6:439\n1#6:468\n1#6:502\n1#6:532\n1#6:538\n*S KotlinDebug\n*F\n+ 1 SnapshotStateList.android.kt\nandroidx/compose/runtime/snapshots/SnapshotStateList\n*L\n95#1:189,4\n103#1:193\n107#1:206\n107#1:217,2\n107#1:219\n107#1:220,4\n109#1:245\n109#1:256,2\n109#1:258\n109#1:259,4\n115#1:283\n115#1:294,2\n115#1:296\n115#1:297,4\n119#1:310,2\n119#1:312\n119#1:314,2\n119#1:321\n121#1:336\n121#1:347,2\n121#1:349\n121#1:350,4\n123#1:373\n123#1:384,2\n123#1:386\n123#1:387,4\n127#1:413\n127#1:424,2\n127#1:426\n127#1:427,4\n134#1:450\n134#1:461,2\n134#1:463\n134#1:464,4\n137#1:484\n137#1:495,2\n137#1:497\n137#1:498,4\n142#1:514\n142#1:525,2\n142#1:527\n142#1:528,4\n152#1:537\n107#1:194,9\n107#1:204\n107#1:205\n107#1:207,9\n107#1:216\n107#1:225,6\n109#1:231,5\n109#1:236,6\n109#1:243\n109#1:244\n109#1:246,9\n109#1:255\n109#1:264,6\n109#1:270\n115#1:271,9\n115#1:281\n115#1:282\n115#1:284,9\n115#1:293\n115#1:302,6\n119#1:308\n119#1:309\n119#1:316,5\n119#1:323\n121#1:324,9\n121#1:334\n121#1:335\n121#1:337,9\n121#1:346\n121#1:355,6\n123#1:361,9\n123#1:371\n123#1:372\n123#1:374,9\n123#1:383\n123#1:392,6\n127#1:399,5\n127#1:404,6\n127#1:411\n127#1:412\n127#1:414,9\n127#1:423\n127#1:432,6\n127#1:438\n134#1:440\n134#1:441,6\n134#1:448\n134#1:449\n134#1:451,9\n134#1:460\n134#1:469,6\n134#1:475\n137#1:476,5\n137#1:482\n137#1:483\n137#1:485,9\n137#1:494\n137#1:503,3\n142#1:506,5\n142#1:512\n142#1:513\n142#1:515,9\n142#1:524\n142#1:533,3\n152#1:536\n107#1:203\n109#1:242\n115#1:280\n119#1:313\n121#1:333\n123#1:370\n127#1:410\n134#1:447\n137#1:481\n142#1:511\n107#1:224\n109#1:263\n115#1:301\n119#1:322\n121#1:354\n123#1:391\n127#1:431\n134#1:468\n137#1:502\n142#1:532\n*E\n"})
/* loaded from: classes.dex */
public final class SnapshotStateList<T> implements Parcelable, StateObject, List<T>, RandomAccess, KMutableList {
    public static final int $stable = 0;
    @NotNull
    private StateRecord firstStateRecord;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final Parcelable.Creator<SnapshotStateList<Object>> CREATOR = new SnapshotStateList$Companion$CREATOR$1();

    /* compiled from: SnapshotStateList.android.kt */
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

    public SnapshotStateList(@NotNull PersistentList<? extends T> persistentList) {
        this.firstStateRecord = SnapshotStateListKt.stateRecordWith(this, persistentList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean addAll$lambda$4(int i10, Collection collection, List list) {
        return list.addAll(i10, collection);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean retainAll$lambda$10(Collection collection, List list) {
        return list.retainAll(collection);
    }

    @Override // java.util.List, java.util.Collection
    public boolean add(T t10) {
        int modification$runtime;
        PersistentList<T> list$runtime;
        Snapshot current;
        boolean attemptUpdate;
        do {
            synchronized (SnapshotStateListKt.access$getSync$p()) {
                StateRecord firstStateRecord = getFirstStateRecord();
                Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.withCurrent>");
                StateListStateRecord stateListStateRecord = (StateListStateRecord) SnapshotKt.current((StateListStateRecord) firstStateRecord);
                modification$runtime = stateListStateRecord.getModification$runtime();
                list$runtime = stateListStateRecord.getList$runtime();
                Unit unit = Unit.f60915a;
            }
            Intrinsics.checkNotNull(list$runtime);
            PersistentList<T> add = list$runtime.add((PersistentList<T>) t10);
            if (Intrinsics.areEqual(add, list$runtime)) {
                return false;
            }
            StateRecord firstStateRecord2 = getFirstStateRecord();
            Intrinsics.checkNotNull(firstStateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.writable>");
            StateListStateRecord stateListStateRecord2 = (StateListStateRecord) firstStateRecord2;
            synchronized (SnapshotKt.getLock()) {
                current = Snapshot.Companion.getCurrent();
                attemptUpdate = SnapshotStateListKt.attemptUpdate((StateListStateRecord) SnapshotKt.writableRecord(stateListStateRecord2, this, current), modification$runtime, add, true);
            }
            SnapshotKt.notifyWrite(current, this);
        } while (!attemptUpdate);
        return true;
    }

    @Override // java.util.List
    public boolean addAll(final int i10, @NotNull final Collection<? extends T> collection) {
        return SnapshotStateListKt.mutateBoolean(this, new Function1() { // from class: androidx.compose.runtime.snapshots.i
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean addAll$lambda$4;
                addAll$lambda$4 = SnapshotStateList.addAll$lambda$4(i10, collection, (List) obj);
                return Boolean.valueOf(addAll$lambda$4);
            }
        });
    }

    @Override // java.util.List, java.util.Collection
    public void clear() {
        Snapshot current;
        StateRecord firstStateRecord = getFirstStateRecord();
        Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.writable>");
        StateListStateRecord stateListStateRecord = (StateListStateRecord) firstStateRecord;
        synchronized (SnapshotKt.getLock()) {
            current = Snapshot.Companion.getCurrent();
            StateListStateRecord stateListStateRecord2 = (StateListStateRecord) SnapshotKt.writableRecord(stateListStateRecord, this, current);
            synchronized (SnapshotStateListKt.access$getSync$p()) {
                stateListStateRecord2.setList$runtime(ExtensionsKt.persistentListOf());
                stateListStateRecord2.setModification$runtime(stateListStateRecord2.getModification$runtime() + 1);
                stateListStateRecord2.setStructuralChange$runtime(stateListStateRecord2.getStructuralChange$runtime() + 1);
            }
        }
        SnapshotKt.notifyWrite(current, this);
    }

    @Override // java.util.List, java.util.Collection
    public boolean contains(Object obj) {
        return SnapshotStateListKt.getReadable(this).getList$runtime().contains(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean containsAll(@NotNull Collection<?> collection) {
        return SnapshotStateListKt.getReadable(this).getList$runtime().containsAll(collection);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // java.util.List
    public T get(int i10) {
        return SnapshotStateListKt.getReadable(this).getList$runtime().get(i10);
    }

    @NotNull
    public final List<T> getDebuggerDisplayValue() {
        StateRecord firstStateRecord = getFirstStateRecord();
        Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.withCurrent>");
        return ((StateListStateRecord) SnapshotKt.current((StateListStateRecord) firstStateRecord)).getList$runtime();
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    @NotNull
    public StateRecord getFirstStateRecord() {
        return this.firstStateRecord;
    }

    public int getSize() {
        return SnapshotStateListKt.getReadable(this).getList$runtime().size();
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        return SnapshotStateListKt.getReadable(this).getList$runtime().indexOf(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean isEmpty() {
        return SnapshotStateListKt.getReadable(this).getList$runtime().isEmpty();
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    @NotNull
    public Iterator<T> iterator() {
        return listIterator();
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        return SnapshotStateListKt.getReadable(this).getList$runtime().lastIndexOf(obj);
    }

    @Override // java.util.List
    @NotNull
    public ListIterator<T> listIterator() {
        return new StateListIterator(this, 0);
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public void prependStateRecord(@NotNull StateRecord stateRecord) {
        stateRecord.setNext$runtime(getFirstStateRecord());
        Intrinsics.checkNotNull(stateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>");
        this.firstStateRecord = (StateListStateRecord) stateRecord;
    }

    @Override // java.util.List
    public final /* bridge */ T remove(int i10) {
        return removeAt(i10);
    }

    @Override // java.util.List, java.util.Collection
    public boolean removeAll(@NotNull Collection<?> collection) {
        int modification$runtime;
        PersistentList<T> list$runtime;
        Snapshot current;
        boolean attemptUpdate;
        do {
            synchronized (SnapshotStateListKt.access$getSync$p()) {
                StateRecord firstStateRecord = getFirstStateRecord();
                Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.withCurrent>");
                StateListStateRecord stateListStateRecord = (StateListStateRecord) SnapshotKt.current((StateListStateRecord) firstStateRecord);
                modification$runtime = stateListStateRecord.getModification$runtime();
                list$runtime = stateListStateRecord.getList$runtime();
                Unit unit = Unit.f60915a;
            }
            Intrinsics.checkNotNull(list$runtime);
            PersistentList<T> removeAll = list$runtime.removeAll((Collection<? extends T>) collection);
            if (Intrinsics.areEqual(removeAll, list$runtime)) {
                return false;
            }
            StateRecord firstStateRecord2 = getFirstStateRecord();
            Intrinsics.checkNotNull(firstStateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.writable>");
            StateListStateRecord stateListStateRecord2 = (StateListStateRecord) firstStateRecord2;
            synchronized (SnapshotKt.getLock()) {
                current = Snapshot.Companion.getCurrent();
                attemptUpdate = SnapshotStateListKt.attemptUpdate((StateListStateRecord) SnapshotKt.writableRecord(stateListStateRecord2, this, current), modification$runtime, removeAll, true);
            }
            SnapshotKt.notifyWrite(current, this);
        } while (!attemptUpdate);
        return true;
    }

    public T removeAt(int i10) {
        int modification$runtime;
        PersistentList<T> list$runtime;
        Snapshot current;
        boolean attemptUpdate;
        T t10 = get(i10);
        do {
            synchronized (SnapshotStateListKt.access$getSync$p()) {
                StateRecord firstStateRecord = getFirstStateRecord();
                Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.withCurrent>");
                StateListStateRecord stateListStateRecord = (StateListStateRecord) SnapshotKt.current((StateListStateRecord) firstStateRecord);
                modification$runtime = stateListStateRecord.getModification$runtime();
                list$runtime = stateListStateRecord.getList$runtime();
                Unit unit = Unit.f60915a;
            }
            Intrinsics.checkNotNull(list$runtime);
            PersistentList<T> removeAt = list$runtime.removeAt(i10);
            if (Intrinsics.areEqual(removeAt, list$runtime)) {
                break;
            }
            StateRecord firstStateRecord2 = getFirstStateRecord();
            Intrinsics.checkNotNull(firstStateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.writable>");
            StateListStateRecord stateListStateRecord2 = (StateListStateRecord) firstStateRecord2;
            synchronized (SnapshotKt.getLock()) {
                current = Snapshot.Companion.getCurrent();
                attemptUpdate = SnapshotStateListKt.attemptUpdate((StateListStateRecord) SnapshotKt.writableRecord(stateListStateRecord2, this, current), modification$runtime, removeAt, true);
            }
            SnapshotKt.notifyWrite(current, this);
        } while (!attemptUpdate);
        return t10;
    }

    public final void removeRange(int i10, int i11) {
        int modification$runtime;
        PersistentList<T> list$runtime;
        Snapshot current;
        boolean attemptUpdate;
        do {
            synchronized (SnapshotStateListKt.access$getSync$p()) {
                StateRecord firstStateRecord = getFirstStateRecord();
                Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.withCurrent>");
                StateListStateRecord stateListStateRecord = (StateListStateRecord) SnapshotKt.current((StateListStateRecord) firstStateRecord);
                modification$runtime = stateListStateRecord.getModification$runtime();
                list$runtime = stateListStateRecord.getList$runtime();
                Unit unit = Unit.f60915a;
            }
            Intrinsics.checkNotNull(list$runtime);
            PersistentList.Builder<T> builder = list$runtime.builder();
            builder.subList(i10, i11).clear();
            PersistentList<T> build = builder.build();
            if (!Intrinsics.areEqual(build, list$runtime)) {
                StateRecord firstStateRecord2 = getFirstStateRecord();
                Intrinsics.checkNotNull(firstStateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.writable>");
                StateListStateRecord stateListStateRecord2 = (StateListStateRecord) firstStateRecord2;
                synchronized (SnapshotKt.getLock()) {
                    current = Snapshot.Companion.getCurrent();
                    attemptUpdate = SnapshotStateListKt.attemptUpdate((StateListStateRecord) SnapshotKt.writableRecord(stateListStateRecord2, this, current), modification$runtime, build, true);
                }
                SnapshotKt.notifyWrite(current, this);
            } else {
                return;
            }
        } while (!attemptUpdate);
    }

    @Override // java.util.List, java.util.Collection
    public boolean retainAll(@NotNull final Collection<?> collection) {
        return SnapshotStateListKt.mutateBoolean(this, new Function1() { // from class: androidx.compose.runtime.snapshots.h
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean retainAll$lambda$10;
                retainAll$lambda$10 = SnapshotStateList.retainAll$lambda$10(collection, (List) obj);
                return Boolean.valueOf(retainAll$lambda$10);
            }
        });
    }

    public final int retainAllInRange$runtime(@NotNull Collection<? extends T> collection, int i10, int i11) {
        int modification$runtime;
        PersistentList<T> list$runtime;
        Snapshot current;
        boolean attemptUpdate;
        int size = size();
        do {
            synchronized (SnapshotStateListKt.access$getSync$p()) {
                StateRecord firstStateRecord = getFirstStateRecord();
                Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.withCurrent>");
                StateListStateRecord stateListStateRecord = (StateListStateRecord) SnapshotKt.current((StateListStateRecord) firstStateRecord);
                modification$runtime = stateListStateRecord.getModification$runtime();
                list$runtime = stateListStateRecord.getList$runtime();
                Unit unit = Unit.f60915a;
            }
            Intrinsics.checkNotNull(list$runtime);
            PersistentList.Builder<T> builder = list$runtime.builder();
            builder.subList(i10, i11).retainAll(collection);
            PersistentList<T> build = builder.build();
            if (Intrinsics.areEqual(build, list$runtime)) {
                break;
            }
            StateRecord firstStateRecord2 = getFirstStateRecord();
            Intrinsics.checkNotNull(firstStateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.writable>");
            StateListStateRecord stateListStateRecord2 = (StateListStateRecord) firstStateRecord2;
            synchronized (SnapshotKt.getLock()) {
                current = Snapshot.Companion.getCurrent();
                attemptUpdate = SnapshotStateListKt.attemptUpdate((StateListStateRecord) SnapshotKt.writableRecord(stateListStateRecord2, this, current), modification$runtime, build, true);
            }
            SnapshotKt.notifyWrite(current, this);
        } while (!attemptUpdate);
        return size - size();
    }

    @Override // java.util.List
    public T set(int i10, T t10) {
        int modification$runtime;
        PersistentList<T> list$runtime;
        Snapshot current;
        boolean attemptUpdate;
        T t11 = get(i10);
        do {
            synchronized (SnapshotStateListKt.access$getSync$p()) {
                StateRecord firstStateRecord = getFirstStateRecord();
                Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.withCurrent>");
                StateListStateRecord stateListStateRecord = (StateListStateRecord) SnapshotKt.current((StateListStateRecord) firstStateRecord);
                modification$runtime = stateListStateRecord.getModification$runtime();
                list$runtime = stateListStateRecord.getList$runtime();
                Unit unit = Unit.f60915a;
            }
            Intrinsics.checkNotNull(list$runtime);
            PersistentList<T> persistentList = list$runtime.set(i10, (int) t10);
            if (Intrinsics.areEqual(persistentList, list$runtime)) {
                break;
            }
            StateRecord firstStateRecord2 = getFirstStateRecord();
            Intrinsics.checkNotNull(firstStateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.writable>");
            StateListStateRecord stateListStateRecord2 = (StateListStateRecord) firstStateRecord2;
            synchronized (SnapshotKt.getLock()) {
                current = Snapshot.Companion.getCurrent();
                attemptUpdate = SnapshotStateListKt.attemptUpdate((StateListStateRecord) SnapshotKt.writableRecord(stateListStateRecord2, this, current), modification$runtime, persistentList, false);
            }
            SnapshotKt.notifyWrite(current, this);
        } while (!attemptUpdate);
        return t11;
    }

    @Override // java.util.List, java.util.Collection
    public final /* bridge */ int size() {
        return getSize();
    }

    @Override // java.util.List
    @NotNull
    public List<T> subList(int i10, int i11) {
        boolean z10;
        if (i10 >= 0 && i10 <= i11 && i11 <= size()) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            PreconditionsKt.throwIllegalArgumentException("fromIndex or toIndex are out of bounds");
        }
        return new SubList(this, i10, i11);
    }

    @Override // java.util.List, java.util.Collection
    public Object[] toArray() {
        return CollectionToArray.toArray(this);
    }

    @NotNull
    public final List<T> toList() {
        return SnapshotStateListKt.getReadable(this).getList$runtime();
    }

    @NotNull
    public String toString() {
        StateRecord firstStateRecord = getFirstStateRecord();
        Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>");
        return "SnapshotStateList(value=" + ((StateListStateRecord) SnapshotKt.current((StateListStateRecord) firstStateRecord)).getList$runtime() + ")@" + hashCode();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel parcel, int i10) {
        List<T> list = toList();
        int size = list.size();
        parcel.writeInt(size);
        for (int i11 = 0; i11 < size; i11++) {
            parcel.writeValue(list.get(i11));
        }
    }

    @Override // java.util.List, java.util.Collection
    public boolean addAll(@NotNull Collection<? extends T> collection) {
        int modification$runtime;
        PersistentList<T> list$runtime;
        Snapshot current;
        boolean attemptUpdate;
        do {
            synchronized (SnapshotStateListKt.access$getSync$p()) {
                StateRecord firstStateRecord = getFirstStateRecord();
                Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.withCurrent>");
                StateListStateRecord stateListStateRecord = (StateListStateRecord) SnapshotKt.current((StateListStateRecord) firstStateRecord);
                modification$runtime = stateListStateRecord.getModification$runtime();
                list$runtime = stateListStateRecord.getList$runtime();
                Unit unit = Unit.f60915a;
            }
            Intrinsics.checkNotNull(list$runtime);
            PersistentList<T> addAll = list$runtime.addAll(collection);
            if (Intrinsics.areEqual(addAll, list$runtime)) {
                return false;
            }
            StateRecord firstStateRecord2 = getFirstStateRecord();
            Intrinsics.checkNotNull(firstStateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.writable>");
            StateListStateRecord stateListStateRecord2 = (StateListStateRecord) firstStateRecord2;
            synchronized (SnapshotKt.getLock()) {
                current = Snapshot.Companion.getCurrent();
                attemptUpdate = SnapshotStateListKt.attemptUpdate((StateListStateRecord) SnapshotKt.writableRecord(stateListStateRecord2, this, current), modification$runtime, addAll, true);
            }
            SnapshotKt.notifyWrite(current, this);
        } while (!attemptUpdate);
        return true;
    }

    @Override // java.util.List
    @NotNull
    public ListIterator<T> listIterator(int i10) {
        return new StateListIterator(this, i10);
    }

    @Override // java.util.List, java.util.Collection
    public boolean remove(Object obj) {
        int modification$runtime;
        PersistentList<T> list$runtime;
        Snapshot current;
        boolean attemptUpdate;
        do {
            synchronized (SnapshotStateListKt.access$getSync$p()) {
                StateRecord firstStateRecord = getFirstStateRecord();
                Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.withCurrent>");
                StateListStateRecord stateListStateRecord = (StateListStateRecord) SnapshotKt.current((StateListStateRecord) firstStateRecord);
                modification$runtime = stateListStateRecord.getModification$runtime();
                list$runtime = stateListStateRecord.getList$runtime();
                Unit unit = Unit.f60915a;
            }
            Intrinsics.checkNotNull(list$runtime);
            PersistentList<T> remove = list$runtime.remove((PersistentList<T>) obj);
            if (Intrinsics.areEqual(remove, list$runtime)) {
                return false;
            }
            StateRecord firstStateRecord2 = getFirstStateRecord();
            Intrinsics.checkNotNull(firstStateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.writable>");
            StateListStateRecord stateListStateRecord2 = (StateListStateRecord) firstStateRecord2;
            synchronized (SnapshotKt.getLock()) {
                current = Snapshot.Companion.getCurrent();
                attemptUpdate = SnapshotStateListKt.attemptUpdate((StateListStateRecord) SnapshotKt.writableRecord(stateListStateRecord2, this, current), modification$runtime, remove, true);
            }
            SnapshotKt.notifyWrite(current, this);
        } while (!attemptUpdate);
        return true;
    }

    @Override // java.util.List, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        return (T[]) CollectionToArray.toArray(this, tArr);
    }

    public SnapshotStateList() {
        this(ExtensionsKt.persistentListOf());
    }

    public static /* synthetic */ void getDebuggerDisplayValue$annotations() {
    }

    @Override // java.util.List
    public void add(int i10, T t10) {
        int modification$runtime;
        PersistentList<T> list$runtime;
        Snapshot current;
        boolean attemptUpdate;
        do {
            synchronized (SnapshotStateListKt.access$getSync$p()) {
                StateRecord firstStateRecord = getFirstStateRecord();
                Intrinsics.checkNotNull(firstStateRecord, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.withCurrent>");
                StateListStateRecord stateListStateRecord = (StateListStateRecord) SnapshotKt.current((StateListStateRecord) firstStateRecord);
                modification$runtime = stateListStateRecord.getModification$runtime();
                list$runtime = stateListStateRecord.getList$runtime();
                Unit unit = Unit.f60915a;
            }
            Intrinsics.checkNotNull(list$runtime);
            PersistentList<T> add = list$runtime.add(i10, (int) t10);
            if (Intrinsics.areEqual(add, list$runtime)) {
                return;
            }
            StateRecord firstStateRecord2 = getFirstStateRecord();
            Intrinsics.checkNotNull(firstStateRecord2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.writable>");
            StateListStateRecord stateListStateRecord2 = (StateListStateRecord) firstStateRecord2;
            synchronized (SnapshotKt.getLock()) {
                current = Snapshot.Companion.getCurrent();
                attemptUpdate = SnapshotStateListKt.attemptUpdate((StateListStateRecord) SnapshotKt.writableRecord(stateListStateRecord2, this, current), modification$runtime, add, true);
            }
            SnapshotKt.notifyWrite(current, this);
        } while (!attemptUpdate);
    }
}
