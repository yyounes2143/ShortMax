package io.bidmachine.nativead.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.AttrRes;
import io.bidmachine.LabelData;
import io.bidmachine.PositionData;
import io.bidmachine.PrivacySheetData;
import io.bidmachine.rendering.view.PrivacySheetDialog;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yq.s;
/* compiled from: NativeAdOverlayContainer.kt */
@Metadata
/* loaded from: classes8.dex */
public final class NativeAdOverlayContainer extends FrameLayout {

    /* compiled from: NativeAdOverlayContainer.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[PositionData.values().length];
            try {
                iArr[PositionData.TopLeft.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PositionData.TopRight.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PositionData.BottomLeft.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[PositionData.BottomRight.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NativeAdOverlayContainer(@NotNull Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(PrivacySheetData privacySheetData, View v10) {
        Intrinsics.checkNotNullParameter(privacySheetData, "$privacySheetData");
        Intrinsics.checkNotNullParameter(v10, "v");
        PrivacySheetDialog.d dVar = PrivacySheetDialog.f58589c;
        Context o10 = io.bidmachine.core.g.o(v10.getContext(), v10);
        Intrinsics.checkNotNullExpressionValue(o10, "findDialogContext(v.context, v)");
        dVar.a(o10, privacySheetData.getPrivacySheetParams());
    }

    private final ImageView d(LabelData labelData, int i10, int i11) {
        ImageView imageView = new ImageView(getContext());
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        imageView.setImageBitmap(labelData.getImage());
        Context context = imageView.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        int j10 = s.j(context, labelData.getWidthDp());
        Context context2 = imageView.getContext();
        Intrinsics.checkNotNullExpressionValue(context2, "context");
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(j10, s.j(context2, labelData.getHeightDp()));
        layoutParams.setMargins(i10, 0, i11, 0);
        imageView.setLayoutParams(layoutParams);
        return imageView;
    }

    public final void b(@NotNull mp.e nativeData) {
        int i10;
        Intrinsics.checkNotNullParameter(nativeData, "nativeData");
        removeAllViews();
        Context context = getContext();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LabelData m10 = nativeData.m();
        int i11 = 0;
        if (m10 != null) {
            PositionData positionData = m10.getPositionData();
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(0);
            linearLayout.addView(d(m10, 0, 0));
            linkedHashMap.put(positionData, linearLayout);
        }
        final PrivacySheetData a10 = nativeData.a();
        if (a10 != null) {
            LabelData labelData = a10.getLabelData();
            PositionData positionData2 = labelData.getPositionData();
            LinearLayout linearLayout2 = (LinearLayout) linkedHashMap.get(positionData2);
            if (linearLayout2 == null) {
                linearLayout2 = new LinearLayout(context);
                linearLayout2.setOrientation(0);
            }
            linkedHashMap.put(positionData2, linearLayout2);
            Intrinsics.checkNotNullExpressionValue(context, "context");
            int j10 = s.j(context, 5.0f);
            int childCount = linearLayout2.getChildCount();
            if (positionData2 != PositionData.TopLeft && positionData2 != PositionData.BottomLeft) {
                i10 = linearLayout2.getChildCount();
                if (childCount > 0) {
                    j10 = 0;
                    i11 = j10;
                } else {
                    j10 = 0;
                }
            } else {
                i10 = 0;
                if (childCount <= 0) {
                    j10 = 0;
                }
            }
            ImageView d10 = d(labelData, i11, j10);
            linearLayout2.addView(d10, i10);
            d10.setOnClickListener(new View.OnClickListener() { // from class: io.bidmachine.nativead.view.h
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    NativeAdOverlayContainer.c(PrivacySheetData.this, view);
                }
            });
        }
        Intrinsics.checkNotNullExpressionValue(context, "context");
        int j11 = s.j(context, 8.0f);
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            View view = (LinearLayout) entry.getValue();
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            layoutParams.setMargins(j11, j11, j11, j11);
            int i12 = a.$EnumSwitchMapping$0[((PositionData) entry.getKey()).ordinal()];
            if (i12 != 1) {
                if (i12 != 2) {
                    if (i12 != 3) {
                        if (i12 == 4) {
                            layoutParams.gravity = 85;
                        }
                    } else {
                        layoutParams.gravity = 83;
                    }
                } else {
                    layoutParams.gravity = 53;
                }
            } else {
                layoutParams.gravity = 51;
            }
            addView(view, layoutParams);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NativeAdOverlayContainer(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ NativeAdOverlayContainer(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeAdOverlayContainer(@NotNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
    }
}
