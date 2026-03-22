package androidx.compose.ui.autofill;

import android.graphics.Rect;
import android.util.Log;
import android.util.SparseArray;
import android.view.ViewStructure;
import android.view.autofill.AutofillId;
import android.view.autofill.AutofillValue;
import androidx.annotation.RequiresApi;
import androidx.compose.ui.ExperimentalComposeUiApi;
import androidx.compose.ui.graphics.RectHelper_androidKt;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NotImplementedError;
import kotlin.jvm.internal.Intrinsics;
import o.f;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidAutofill.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class AndroidAutofill_androidKt {
    @RequiresApi(26)
    @ExperimentalComposeUiApi
    public static final void performAutofill(@NotNull AndroidAutofill androidAutofill, @NotNull SparseArray<AutofillValue> values) {
        Intrinsics.checkNotNullParameter(androidAutofill, "<this>");
        Intrinsics.checkNotNullParameter(values, "values");
        int size = values.size();
        for (int i10 = 0; i10 < size; i10++) {
            int keyAt = values.keyAt(i10);
            AutofillValue value = f.a(values.get(keyAt));
            AutofillApi26Helper autofillApi26Helper = AutofillApi26Helper.INSTANCE;
            Intrinsics.checkNotNullExpressionValue(value, "value");
            if (autofillApi26Helper.isText(value)) {
                androidAutofill.getAutofillTree().performAutofill(keyAt, autofillApi26Helper.textValue(value).toString());
            } else if (!autofillApi26Helper.isDate(value)) {
                if (!autofillApi26Helper.isList(value)) {
                    if (autofillApi26Helper.isToggle(value)) {
                        throw new NotImplementedError("An operation is not implemented: b/138604541:  Add onFill() callback for toggle");
                    }
                } else {
                    throw new NotImplementedError("An operation is not implemented: b/138604541: Add onFill() callback for list");
                }
            } else {
                throw new NotImplementedError("An operation is not implemented: b/138604541: Add onFill() callback for date");
            }
        }
    }

    @RequiresApi(26)
    @ExperimentalComposeUiApi
    public static final void populateViewStructure(@NotNull AndroidAutofill androidAutofill, @NotNull ViewStructure root) {
        Rect androidRect;
        Intrinsics.checkNotNullParameter(androidAutofill, "<this>");
        Intrinsics.checkNotNullParameter(root, "root");
        int addChildCount = AutofillApi23Helper.INSTANCE.addChildCount(root, androidAutofill.getAutofillTree().getChildren().size());
        for (Map.Entry<Integer, AutofillNode> entry : androidAutofill.getAutofillTree().getChildren().entrySet()) {
            int intValue = entry.getKey().intValue();
            AutofillNode value = entry.getValue();
            AutofillApi23Helper autofillApi23Helper = AutofillApi23Helper.INSTANCE;
            ViewStructure newChild = autofillApi23Helper.newChild(root, addChildCount);
            if (newChild != null) {
                AutofillApi26Helper autofillApi26Helper = AutofillApi26Helper.INSTANCE;
                AutofillId autofillId = autofillApi26Helper.getAutofillId(root);
                Intrinsics.checkNotNull(autofillId);
                autofillApi26Helper.setAutofillId(newChild, autofillId, intValue);
                autofillApi23Helper.setId(newChild, intValue, androidAutofill.getView().getContext().getPackageName(), null, null);
                autofillApi26Helper.setAutofillType(newChild, 1);
                List<AutofillType> autofillTypes = value.getAutofillTypes();
                ArrayList arrayList = new ArrayList(autofillTypes.size());
                int size = autofillTypes.size();
                for (int i10 = 0; i10 < size; i10++) {
                    arrayList.add(AndroidAutofillType_androidKt.getAndroidType(autofillTypes.get(i10)));
                }
                Object[] array = arrayList.toArray(new String[0]);
                if (array != null) {
                    autofillApi26Helper.setAutofillHints(newChild, (String[]) array);
                    if (value.getBoundingBox() == null) {
                        Log.w("Autofill Warning", "Bounding box not set.\n                        Did you call perform autofillTree before the component was positioned? ");
                    }
                    androidx.compose.ui.geometry.Rect boundingBox = value.getBoundingBox();
                    if (boundingBox != null && (androidRect = RectHelper_androidKt.toAndroidRect(boundingBox)) != null) {
                        AutofillApi23Helper.INSTANCE.setDimens(newChild, androidRect.left, androidRect.top, 0, 0, androidRect.width(), androidRect.height());
                    }
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                }
            }
            addChildCount++;
        }
    }
}
