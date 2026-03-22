package androidx.datastore.preferences.protobuf;

import java.util.List;
@CheckReturnValue
/* loaded from: classes2.dex */
interface ListFieldSchema {
    void makeImmutableListAt(Object obj, long j10);

    <L> void mergeListsAt(Object obj, Object obj2, long j10);

    <L> List<L> mutableListAt(Object obj, long j10);
}
