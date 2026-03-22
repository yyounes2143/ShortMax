package androidx.databinding;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
/* loaded from: classes2.dex */
public class DataBindingUtil {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int f1422a = 0;
    private static DataBinderMapper sMapper = new DataBinderMapperImpl();
    private static DataBindingComponent sDefaultComponent = null;

    private DataBindingUtil() {
    }

    @Nullable
    public static <T extends ViewDataBinding> T bind(@NonNull View view) {
        return (T) bind(view, sDefaultComponent);
    }

    private static <T extends ViewDataBinding> T bindToAddedViews(DataBindingComponent dataBindingComponent, ViewGroup viewGroup, int i10, int i11) {
        int childCount = viewGroup.getChildCount();
        int i12 = childCount - i10;
        if (i12 == 1) {
            return (T) bind(dataBindingComponent, viewGroup.getChildAt(childCount - 1), i11);
        }
        View[] viewArr = new View[i12];
        for (int i13 = 0; i13 < i12; i13++) {
            viewArr[i13] = viewGroup.getChildAt(i13 + i10);
        }
        return (T) bind(dataBindingComponent, viewArr, i11);
    }

    @Nullable
    public static String convertBrIdToString(int i10) {
        return sMapper.convertBrIdToString(i10);
    }

    @Nullable
    public static <T extends ViewDataBinding> T findBinding(@NonNull View view) {
        while (view != null) {
            T t10 = (T) ViewDataBinding.getBinding(view);
            if (t10 != null) {
                return t10;
            }
            Object tag = view.getTag();
            if (tag instanceof String) {
                String str = (String) tag;
                if (str.startsWith(TtmlNode.TAG_LAYOUT) && str.endsWith("_0")) {
                    char charAt = str.charAt(6);
                    int indexOf = str.indexOf(47, 7);
                    if (charAt == '/') {
                        if (indexOf == -1) {
                            return null;
                        }
                    } else if (charAt == '-' && indexOf != -1 && str.indexOf(47, indexOf + 1) == -1) {
                        return null;
                    }
                }
            }
            ViewParent parent = view.getParent();
            if (parent instanceof View) {
                view = (View) parent;
            } else {
                view = null;
            }
        }
        return null;
    }

    @Nullable
    public static <T extends ViewDataBinding> T getBinding(@NonNull View view) {
        return (T) ViewDataBinding.getBinding(view);
    }

    @Nullable
    public static DataBindingComponent getDefaultComponent() {
        return sDefaultComponent;
    }

    public static <T extends ViewDataBinding> T inflate(@NonNull LayoutInflater layoutInflater, int i10, @Nullable ViewGroup viewGroup, boolean z10) {
        return (T) inflate(layoutInflater, i10, viewGroup, z10, sDefaultComponent);
    }

    public static <T extends ViewDataBinding> T setContentView(@NonNull Activity activity, int i10) {
        return (T) setContentView(activity, i10, sDefaultComponent);
    }

    public static void setDefaultComponent(@Nullable DataBindingComponent dataBindingComponent) {
        sDefaultComponent = dataBindingComponent;
    }

    @Nullable
    public static <T extends ViewDataBinding> T bind(@NonNull View view, DataBindingComponent dataBindingComponent) {
        T t10 = (T) getBinding(view);
        if (t10 != null) {
            return t10;
        }
        Object tag = view.getTag();
        if (tag instanceof String) {
            int layoutId = sMapper.getLayoutId((String) tag);
            if (layoutId != 0) {
                return (T) sMapper.getDataBinder(dataBindingComponent, view, layoutId);
            }
            throw new IllegalArgumentException("View is not a binding layout. Tag: " + tag);
        }
        throw new IllegalArgumentException("View is not a binding layout");
    }

    public static <T extends ViewDataBinding> T inflate(@NonNull LayoutInflater layoutInflater, int i10, @Nullable ViewGroup viewGroup, boolean z10, @Nullable DataBindingComponent dataBindingComponent) {
        boolean z11 = viewGroup != null && z10;
        int childCount = z11 ? viewGroup.getChildCount() : 0;
        View inflate = layoutInflater.inflate(i10, viewGroup, z10);
        if (z11) {
            return (T) bindToAddedViews(dataBindingComponent, viewGroup, childCount, i10);
        }
        return (T) bind(dataBindingComponent, inflate, i10);
    }

    public static <T extends ViewDataBinding> T setContentView(@NonNull Activity activity, int i10, @Nullable DataBindingComponent dataBindingComponent) {
        activity.setContentView(i10);
        return (T) bindToAddedViews(dataBindingComponent, (ViewGroup) activity.getWindow().getDecorView().findViewById(16908290), 0, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T extends ViewDataBinding> T bind(DataBindingComponent dataBindingComponent, View[] viewArr, int i10) {
        return (T) sMapper.getDataBinder(dataBindingComponent, viewArr, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T extends ViewDataBinding> T bind(DataBindingComponent dataBindingComponent, View view, int i10) {
        return (T) sMapper.getDataBinder(dataBindingComponent, view, i10);
    }
}
