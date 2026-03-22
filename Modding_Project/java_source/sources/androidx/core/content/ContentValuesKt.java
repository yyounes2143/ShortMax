package androidx.core.content;

import android.content.ContentValues;
import kotlin.Metadata;
import kotlin.Pair;
import org.jetbrains.annotations.NotNull;
/* compiled from: ContentValues.kt */
@Metadata
/* loaded from: classes.dex */
public final class ContentValuesKt {
    @NotNull
    public static final ContentValues contentValuesOf(@NotNull Pair<String, ? extends Object>... pairArr) {
        ContentValues contentValues = new ContentValues(pairArr.length);
        for (Pair<String, ? extends Object> pair : pairArr) {
            String b10 = pair.b();
            Object d10 = pair.d();
            if (d10 == null) {
                contentValues.putNull(b10);
            } else if (d10 instanceof String) {
                contentValues.put(b10, (String) d10);
            } else if (d10 instanceof Integer) {
                contentValues.put(b10, (Integer) d10);
            } else if (d10 instanceof Long) {
                contentValues.put(b10, (Long) d10);
            } else if (d10 instanceof Boolean) {
                contentValues.put(b10, (Boolean) d10);
            } else if (d10 instanceof Float) {
                contentValues.put(b10, (Float) d10);
            } else if (d10 instanceof Double) {
                contentValues.put(b10, (Double) d10);
            } else if (d10 instanceof byte[]) {
                contentValues.put(b10, (byte[]) d10);
            } else if (d10 instanceof Byte) {
                contentValues.put(b10, (Byte) d10);
            } else if (d10 instanceof Short) {
                contentValues.put(b10, (Short) d10);
            } else {
                throw new IllegalArgumentException("Illegal value type " + d10.getClass().getCanonicalName() + " for key \"" + b10 + '\"');
            }
        }
        return contentValues;
    }
}
