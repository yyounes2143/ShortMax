package androidx.compose.ui.platform.actionmodecallback;

import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
/* compiled from: TextActionModeCallback.android.kt */
@Metadata
/* loaded from: classes.dex */
public enum MenuItemOption {
    Copy(0),
    Paste(1),
    Cut(2),
    SelectAll(3);
    

    /* renamed from: id  reason: collision with root package name */
    private final int f1278id;
    private final int order;

    /* compiled from: TextActionModeCallback.android.kt */
    @Metadata
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[MenuItemOption.values().length];
            iArr[MenuItemOption.Copy.ordinal()] = 1;
            iArr[MenuItemOption.Paste.ordinal()] = 2;
            iArr[MenuItemOption.Cut.ordinal()] = 3;
            iArr[MenuItemOption.SelectAll.ordinal()] = 4;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    MenuItemOption(int i10) {
        this.f1278id = i10;
        this.order = i10;
    }

    public final int getId() {
        return this.f1278id;
    }

    public final int getOrder() {
        return this.order;
    }

    public final int getTitleResource() {
        int i10 = WhenMappings.$EnumSwitchMapping$0[ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 == 4) {
                        return 17039373;
                    }
                    throw new NoWhenBranchMatchedException();
                }
                return 17039363;
            }
            return 17039371;
        }
        return 17039361;
    }
}
