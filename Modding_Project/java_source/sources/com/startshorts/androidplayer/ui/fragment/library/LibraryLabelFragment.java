package com.startshorts.androidplayer.ui.fragment.library;

import android.content.Context;
import android.os.Bundle;
import android.util.LongSparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.util.LongSparseArrayKt;
import androidx.fragment.app.FragmentManager;
import at.n;
import com.google.android.flexbox.FlexboxLayout;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.library.LibraryCategory;
import com.startshorts.androidplayer.bean.library.LibraryClass;
import com.startshorts.androidplayer.databinding.DialogFragmentLibraryLabelBinding;
import com.startshorts.androidplayer.databinding.ItemLibraryClassifyBinding;
import com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import fk.v;
import java.util.ArrayList;
import jk.g;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LibraryLabelFragment.kt */
@Metadata
@SourceDebugExtension({"SMAP\nLibraryLabelFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LibraryLabelFragment.kt\ncom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 LongSparseArray.kt\nandroidx/core/util/LongSparseArrayKt\n+ 4 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n*L\n1#1,282:1\n1863#2,2:283\n1863#2,2:285\n1863#2:287\n1864#2:290\n42#3:288\n42#3:289\n42#3:297\n42#3:298\n53#4,4:291\n53#4,2:295\n56#4:299\n*S KotlinDebug\n*F\n+ 1 LibraryLabelFragment.kt\ncom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment\n*L\n98#1:283,2\n145#1:285,2\n190#1:287\n190#1:290\n193#1:288\n194#1:289\n261#1:297\n262#1:298\n249#1:291,4\n258#1:295,2\n258#1:299\n*E\n"})
/* loaded from: classes7.dex */
public final class LibraryLabelFragment extends BaseBottomSheetDialogFragment<DialogFragmentLibraryLabelBinding> {

    /* renamed from: m  reason: collision with root package name */
    private final int f46233m = R$layout.dialog_fragment_library_label;

    /* renamed from: n  reason: collision with root package name */
    private long f46234n = 3;

    /* renamed from: o  reason: collision with root package name */
    private long f46235o = 3;
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    private final LongSparseArray<LibraryCategory> f46236p = new LongSparseArray<>();
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private LibraryClass f46237q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private n<? super Long, ? super Long, ? super LongSparseArray<LibraryCategory>, Unit> f46238r;

    /* compiled from: LibraryLabelFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends yd.d {

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ LibraryCategory f46240f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(LibraryCategory libraryCategory) {
            super(0L, 1, null);
            this.f46240f = libraryCategory;
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            LibraryLabelFragment.this.f46235o = this.f46240f.getId();
            LibraryLabelFragment.this.N();
        }
    }

    /* compiled from: LibraryLabelFragment.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nLibraryLabelFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LibraryLabelFragment.kt\ncom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$loadLabelClass$1$1\n+ 2 LongSparseArray.kt\nandroidx/core/util/LongSparseArrayKt\n*L\n1#1,282:1\n42#2:283\n*S KotlinDebug\n*F\n+ 1 LibraryLabelFragment.kt\ncom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$loadLabelClass$1$1\n*L\n203#1:283\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class b extends yd.d {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ LibraryCategory f46241e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ LibraryLabelFragment f46242f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ LibraryCategory f46243g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(LibraryCategory libraryCategory, LibraryLabelFragment libraryLabelFragment, LibraryCategory libraryCategory2) {
            super(0L, 1, null);
            this.f46241e = libraryCategory;
            this.f46242f = libraryLabelFragment;
            this.f46243g = libraryCategory2;
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            if (this.f46241e.getId() == 0) {
                this.f46242f.f46236p.clear();
                this.f46242f.f46236p.put(this.f46243g.getId(), this.f46243g);
            } else if (this.f46242f.f46236p.indexOfKey(this.f46241e.getId()) >= 0) {
                this.f46242f.f46236p.remove(this.f46241e.getId());
                if (this.f46242f.f46236p.size() == 0) {
                    this.f46242f.f46236p.put(this.f46243g.getId(), this.f46243g);
                }
            } else if (this.f46242f.f46236p.size() >= 3) {
                this.f46242f.w(R$string.library_activity_label_limit);
                return;
            } else {
                this.f46242f.f46236p.put(this.f46241e.getId(), this.f46241e);
                this.f46242f.f46236p.remove(this.f46243g.getId());
            }
            this.f46242f.O();
        }
    }

    /* compiled from: LibraryLabelFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends yd.d {
        c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            LibraryLabelFragment.this.f46235o = 3L;
            LibraryCategory.Companion companion = LibraryCategory.Companion;
            Context requireContext = LibraryLabelFragment.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            LibraryCategory createClassAll = companion.createClassAll(requireContext);
            LibraryLabelFragment.this.f46236p.clear();
            LibraryLabelFragment.this.f46236p.put(createClassAll.getId(), createClassAll);
            LibraryLabelFragment.this.M();
            LibraryLabelFragment.this.N();
            LibraryLabelFragment.this.O();
        }
    }

    /* compiled from: LibraryLabelFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends yd.d {
        d() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            LibraryLabelFragment.this.dismiss();
            n nVar = LibraryLabelFragment.this.f46238r;
            if (nVar != null) {
                nVar.invoke(Long.valueOf(LibraryLabelFragment.this.f46234n), Long.valueOf(LibraryLabelFragment.this.f46235o), LibraryLabelFragment.this.f46236p);
            }
        }
    }

    private final void J(LibraryClass libraryClass) {
        if (libraryClass == null) {
            return;
        }
        ArrayList<LibraryCategory> contentList = libraryClass.getContentList();
        if (contentList == null) {
            contentList = new ArrayList<>();
        }
        ArrayList<LibraryCategory> classList = libraryClass.getClassList();
        if (classList == null) {
            classList = new ArrayList<>();
        }
        if (contentList.isEmpty() && classList.isEmpty()) {
            return;
        }
        K(contentList);
        L(classList);
    }

    private final void K(ArrayList<LibraryCategory> arrayList) {
        boolean z10;
        LayoutInflater from = LayoutInflater.from(getContext());
        int a10 = g.a(6.0f);
        FlexboxLayout.LayoutParams layoutParams = new FlexboxLayout.LayoutParams(-2, g.a(28.0f));
        if (v.f51778a.b()) {
            layoutParams.setMargins(a10 * 2, a10, 0, a10);
        } else {
            layoutParams.setMargins(0, a10, a10 * 2, a10);
        }
        n().f38927a.removeAllViews();
        for (LibraryCategory libraryCategory : arrayList) {
            ItemLibraryClassifyBinding b10 = ItemLibraryClassifyBinding.b(from);
            Intrinsics.checkNotNullExpressionValue(b10, "inflate(...)");
            b10.f40473a.setText(libraryCategory.getName());
            BaseTextView baseTextView = b10.f40473a;
            int i10 = 1;
            if (this.f46235o == libraryCategory.getId()) {
                z10 = true;
            } else {
                z10 = false;
            }
            baseTextView.setSelected(z10);
            BaseTextView baseTextView2 = b10.f40473a;
            if (this.f46235o != libraryCategory.getId()) {
                i10 = 0;
            }
            baseTextView2.setTypeface(null, i10);
            b10.f40473a.setTag(libraryCategory);
            b10.f40473a.setOnClickListener(new a(libraryCategory));
            n().f38927a.addView(b10.getRoot(), layoutParams);
            if (Intrinsics.areEqual(libraryCategory.getName(), getString(R$string.library_activity_label_all))) {
                b10.f40473a.setContentDescription(libraryCategory.getName() + getString(R$string.library_fragment_interest));
            } else {
                b10.f40473a.setContentDescription(libraryCategory.getName());
            }
        }
        if (arrayList.isEmpty()) {
            n().f38928b.setVisibility(8);
            n().f38927a.setVisibility(8);
            return;
        }
        n().f38928b.setVisibility(0);
        n().f38927a.setVisibility(0);
    }

    private final void L(ArrayList<LibraryCategory> arrayList) {
        boolean z10;
        LibraryCategory.Companion companion = LibraryCategory.Companion;
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        LibraryCategory createClassAll = companion.createClassAll(requireContext);
        LayoutInflater from = LayoutInflater.from(getContext());
        int a10 = g.a(6.0f);
        FlexboxLayout.LayoutParams layoutParams = new FlexboxLayout.LayoutParams(-2, g.a(28.0f));
        if (v.f51778a.b()) {
            layoutParams.setMargins(a10 * 2, a10, 0, a10);
        } else {
            layoutParams.setMargins(0, a10, a10 * 2, a10);
        }
        n().f38929c.removeAllViews();
        for (LibraryCategory libraryCategory : arrayList) {
            ItemLibraryClassifyBinding b10 = ItemLibraryClassifyBinding.b(from);
            Intrinsics.checkNotNullExpressionValue(b10, "inflate(...)");
            b10.f40473a.setText(libraryCategory.getName());
            BaseTextView baseTextView = b10.f40473a;
            int i10 = 1;
            if (this.f46236p.indexOfKey(libraryCategory.getId()) >= 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            baseTextView.setSelected(z10);
            BaseTextView baseTextView2 = b10.f40473a;
            if (this.f46236p.indexOfKey(libraryCategory.getId()) < 0) {
                i10 = 0;
            }
            baseTextView2.setTypeface(null, i10);
            b10.f40473a.setTag(libraryCategory);
            b10.f40473a.setOnClickListener(new b(libraryCategory, this, createClassAll));
            n().f38929c.addView(b10.getRoot(), layoutParams);
            if (Intrinsics.areEqual(libraryCategory.getName(), getString(R$string.library_activity_label_all))) {
                b10.f40473a.setContentDescription(libraryCategory.getName() + getString(R$string.library_fragment_type));
            } else {
                b10.f40473a.setContentDescription(libraryCategory.getName());
            }
        }
        if (arrayList.isEmpty()) {
            n().f38930d.setVisibility(8);
            n().f38929c.setVisibility(8);
            return;
        }
        n().f38930d.setVisibility(0);
        n().f38929c.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void N() {
        boolean z10;
        FlexboxLayout channelFlexboxLayout = n().f38927a;
        Intrinsics.checkNotNullExpressionValue(channelFlexboxLayout, "channelFlexboxLayout");
        int childCount = channelFlexboxLayout.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = channelFlexboxLayout.getChildAt(i10);
            Intrinsics.checkNotNull(childAt, "null cannot be cast to non-null type android.widget.TextView");
            TextView textView = (TextView) childAt;
            Object tag = textView.getTag();
            Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type com.startshorts.androidplayer.bean.library.LibraryCategory");
            LibraryCategory libraryCategory = (LibraryCategory) tag;
            int i11 = 1;
            if (this.f46235o == libraryCategory.getId()) {
                z10 = true;
            } else {
                z10 = false;
            }
            textView.setSelected(z10);
            if (this.f46235o != libraryCategory.getId()) {
                i11 = 0;
            }
            textView.setTypeface(null, i11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void O() {
        boolean z10;
        FlexboxLayout classFlexboxLayout = n().f38929c;
        Intrinsics.checkNotNullExpressionValue(classFlexboxLayout, "classFlexboxLayout");
        int childCount = classFlexboxLayout.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = classFlexboxLayout.getChildAt(i10);
            Intrinsics.checkNotNull(childAt, "null cannot be cast to non-null type android.widget.TextView");
            TextView textView = (TextView) childAt;
            Object tag = textView.getTag();
            Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type com.startshorts.androidplayer.bean.library.LibraryCategory");
            LibraryCategory libraryCategory = (LibraryCategory) tag;
            int i11 = 1;
            if (this.f46236p.indexOfKey(libraryCategory.getId()) >= 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            textView.setSelected(z10);
            if (this.f46236p.indexOfKey(libraryCategory.getId()) < 0) {
                i11 = 0;
            }
            textView.setTypeface(null, i11);
        }
    }

    public final void P(@NotNull FragmentManager manager, @NotNull LibraryClass libClass, long j10, long j11, @NotNull LongSparseArray<LibraryCategory> classIdMap, @NotNull n<? super Long, ? super Long, ? super LongSparseArray<LibraryCategory>, Unit> block) {
        Intrinsics.checkNotNullParameter(manager, "manager");
        Intrinsics.checkNotNullParameter(libClass, "libClass");
        Intrinsics.checkNotNullParameter(classIdMap, "classIdMap");
        Intrinsics.checkNotNullParameter(block, "block");
        this.f46237q = libClass;
        this.f46234n = j10;
        this.f46235o = j11;
        LongSparseArrayKt.putAll(this.f46236p, classIdMap);
        this.f46238r = block;
        super.show(manager, "LibraryLabelFragment");
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    public int m() {
        return this.f46233m;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        ViewGroup.LayoutParams layoutParams = n().f38935i.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ((ViewGroup.MarginLayoutParams) layoutParams).height = g.a(440.0f);
        n().f38934h.setOnClickListener(new c());
        n().f38933g.setOnClickListener(new d());
        J(this.f46237q);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void M() {
    }
}
