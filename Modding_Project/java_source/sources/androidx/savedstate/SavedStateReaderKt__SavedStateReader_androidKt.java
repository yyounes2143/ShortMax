package androidx.savedstate;

import android.os.Bundle;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.n;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SavedStateReader.android.kt */
@Metadata
/* loaded from: classes2.dex */
final /* synthetic */ class SavedStateReaderKt__SavedStateReader_androidKt {
    public static final /* synthetic */ boolean access$contentDeepEquals(Bundle bundle, Bundle bundle2) {
        return contentDeepEquals$SavedStateReaderKt__SavedStateReader_androidKt(bundle, bundle2);
    }

    public static final /* synthetic */ int access$contentDeepHashCode(Bundle bundle) {
        return contentDeepHashCode$SavedStateReaderKt__SavedStateReader_androidKt(bundle);
    }

    public static final /* synthetic */ void access$contentDeepToString(Bundle bundle, StringBuilder sb2, List list) {
        contentDeepToString$SavedStateReaderKt__SavedStateReader_androidKt(bundle, sb2, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean contentDeepEquals$SavedStateReaderKt__SavedStateReader_androidKt(Bundle bundle, Bundle bundle2) {
        if (bundle == bundle2) {
            return true;
        }
        if (bundle.size() != bundle2.size()) {
            return false;
        }
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            Object obj2 = bundle2.get(str);
            if (obj != obj2 && !Intrinsics.areEqual(obj, obj2)) {
                if (obj != null && obj2 != null) {
                    if ((obj instanceof Bundle) && (obj2 instanceof Bundle)) {
                        if (!contentDeepEquals$SavedStateReaderKt__SavedStateReader_androidKt((Bundle) obj, (Bundle) obj2)) {
                            return false;
                        }
                    } else if ((obj instanceof Object[]) && (obj2 instanceof Object[])) {
                        if (!n.d((Object[]) obj, (Object[]) obj2)) {
                            return false;
                        }
                    } else if ((obj instanceof byte[]) && (obj2 instanceof byte[])) {
                        if (!Arrays.equals((byte[]) obj, (byte[]) obj2)) {
                            return false;
                        }
                    } else if ((obj instanceof short[]) && (obj2 instanceof short[])) {
                        if (!Arrays.equals((short[]) obj, (short[]) obj2)) {
                            return false;
                        }
                    } else if ((obj instanceof int[]) && (obj2 instanceof int[])) {
                        if (!Arrays.equals((int[]) obj, (int[]) obj2)) {
                            return false;
                        }
                    } else if ((obj instanceof long[]) && (obj2 instanceof long[])) {
                        if (!Arrays.equals((long[]) obj, (long[]) obj2)) {
                            return false;
                        }
                    } else if ((obj instanceof float[]) && (obj2 instanceof float[])) {
                        if (!Arrays.equals((float[]) obj, (float[]) obj2)) {
                            return false;
                        }
                    } else if ((obj instanceof double[]) && (obj2 instanceof double[])) {
                        if (!Arrays.equals((double[]) obj, (double[]) obj2)) {
                            return false;
                        }
                    } else if ((obj instanceof char[]) && (obj2 instanceof char[])) {
                        if (!Arrays.equals((char[]) obj, (char[]) obj2)) {
                            return false;
                        }
                    } else if ((obj instanceof boolean[]) && (obj2 instanceof boolean[])) {
                        if (!Arrays.equals((boolean[]) obj, (boolean[]) obj2)) {
                            return false;
                        }
                    } else if (!Intrinsics.areEqual(obj, obj2)) {
                    }
                }
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int contentDeepHashCode$SavedStateReaderKt__SavedStateReader_androidKt(Bundle bundle) {
        int i10;
        int i11 = 1;
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            if (obj instanceof Bundle) {
                i10 = contentDeepHashCode$SavedStateReaderKt__SavedStateReader_androidKt((Bundle) obj);
            } else if (obj instanceof Object[]) {
                i10 = n.b((Object[]) obj);
            } else if (obj instanceof byte[]) {
                i10 = Arrays.hashCode((byte[]) obj);
            } else if (obj instanceof short[]) {
                i10 = Arrays.hashCode((short[]) obj);
            } else if (obj instanceof int[]) {
                i10 = Arrays.hashCode((int[]) obj);
            } else if (obj instanceof long[]) {
                i10 = Arrays.hashCode((long[]) obj);
            } else if (obj instanceof float[]) {
                i10 = Arrays.hashCode((float[]) obj);
            } else if (obj instanceof double[]) {
                i10 = Arrays.hashCode((double[]) obj);
            } else if (obj instanceof char[]) {
                i10 = Arrays.hashCode((char[]) obj);
            } else if (obj instanceof boolean[]) {
                i10 = Arrays.hashCode((boolean[]) obj);
            } else if (obj != null) {
                i10 = obj.hashCode();
            } else {
                i10 = 0;
            }
            i11 = (i11 * 31) + i10;
        }
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void contentDeepToString$SavedStateReaderKt__SavedStateReader_androidKt(Bundle bundle, StringBuilder sb2, List<Bundle> list) {
        if (list.contains(bundle)) {
            sb2.append("[...]");
            return;
        }
        list.add(bundle);
        sb2.append('[');
        int i10 = 0;
        for (String str : bundle.keySet()) {
            int i11 = i10 + 1;
            if (i10 != 0) {
                sb2.append(", ");
            }
            sb2.append(str + '=');
            Object obj = bundle.get(str);
            if (obj == null) {
                sb2.append("null");
            } else if (obj instanceof Bundle) {
                contentDeepToString$SavedStateReaderKt__SavedStateReader_androidKt((Bundle) obj, sb2, list);
                Unit unit = Unit.f60915a;
            } else if (obj instanceof Object[]) {
                sb2.append(n.e((Object[]) obj));
            } else if (obj instanceof byte[]) {
                String arrays = Arrays.toString((byte[]) obj);
                Intrinsics.checkNotNullExpressionValue(arrays, "toString(...)");
                sb2.append(arrays);
            } else if (obj instanceof short[]) {
                String arrays2 = Arrays.toString((short[]) obj);
                Intrinsics.checkNotNullExpressionValue(arrays2, "toString(...)");
                sb2.append(arrays2);
            } else if (obj instanceof int[]) {
                String arrays3 = Arrays.toString((int[]) obj);
                Intrinsics.checkNotNullExpressionValue(arrays3, "toString(...)");
                sb2.append(arrays3);
            } else if (obj instanceof long[]) {
                String arrays4 = Arrays.toString((long[]) obj);
                Intrinsics.checkNotNullExpressionValue(arrays4, "toString(...)");
                sb2.append(arrays4);
            } else if (obj instanceof float[]) {
                String arrays5 = Arrays.toString((float[]) obj);
                Intrinsics.checkNotNullExpressionValue(arrays5, "toString(...)");
                sb2.append(arrays5);
            } else if (obj instanceof double[]) {
                String arrays6 = Arrays.toString((double[]) obj);
                Intrinsics.checkNotNullExpressionValue(arrays6, "toString(...)");
                sb2.append(arrays6);
            } else if (obj instanceof char[]) {
                String arrays7 = Arrays.toString((char[]) obj);
                Intrinsics.checkNotNullExpressionValue(arrays7, "toString(...)");
                sb2.append(arrays7);
            } else if (obj instanceof boolean[]) {
                String arrays8 = Arrays.toString((boolean[]) obj);
                Intrinsics.checkNotNullExpressionValue(arrays8, "toString(...)");
                sb2.append(arrays8);
            } else {
                sb2.append(obj.toString());
            }
            i10 = i11;
        }
        sb2.append(']');
        list.remove(CollectionsKt.p(list));
    }
}
