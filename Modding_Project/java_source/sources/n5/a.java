package n5;

import android.util.SparseArray;
import androidx.annotation.NonNull;
import com.google.android.datatransport.Priority;
import java.util.HashMap;
/* compiled from: PriorityMapping.java */
/* loaded from: classes4.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static SparseArray<Priority> f62763a = new SparseArray<>();

    /* renamed from: b  reason: collision with root package name */
    private static HashMap<Priority, Integer> f62764b;

    static {
        HashMap<Priority, Integer> hashMap = new HashMap<>();
        f62764b = hashMap;
        hashMap.put(Priority.DEFAULT, 0);
        f62764b.put(Priority.VERY_LOW, 1);
        f62764b.put(Priority.HIGHEST, 2);
        for (Priority priority : f62764b.keySet()) {
            f62763a.append(f62764b.get(priority).intValue(), priority);
        }
    }

    public static int a(@NonNull Priority priority) {
        Integer num = f62764b.get(priority);
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalStateException("PriorityMapping is missing known Priority value " + priority);
    }

    @NonNull
    public static Priority b(int i10) {
        Priority priority = f62763a.get(i10);
        if (priority != null) {
            return priority;
        }
        throw new IllegalArgumentException("Unknown Priority for value " + i10);
    }
}
