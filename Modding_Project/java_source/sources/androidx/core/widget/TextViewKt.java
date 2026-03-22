package androidx.core.widget;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.TextView;
import at.o;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TextView.kt */
@Metadata
@SourceDebugExtension({"SMAP\nTextView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n1#1,97:1\n65#1:98\n77#1,4:99\n93#1,3:103\n65#1,16:106\n93#1,3:122\n65#1,16:125\n93#1,3:141\n*S KotlinDebug\n*F\n+ 1 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n35#1:98\n35#1:99,4\n35#1:103,3\n49#1:106,16\n49#1:122,3\n58#1:125,16\n58#1:141,3\n*E\n"})
/* loaded from: classes.dex */
public final class TextViewKt {
    @NotNull
    public static final TextWatcher addTextChangedListener(@NotNull TextView textView, @NotNull o<? super CharSequence, ? super Integer, ? super Integer, ? super Integer, Unit> oVar, @NotNull o<? super CharSequence, ? super Integer, ? super Integer, ? super Integer, Unit> oVar2, @NotNull Function1<? super Editable, Unit> function1) {
        TextViewKt$addTextChangedListener$textWatcher$1 textViewKt$addTextChangedListener$textWatcher$1 = new TextViewKt$addTextChangedListener$textWatcher$1(function1, oVar, oVar2);
        textView.addTextChangedListener(textViewKt$addTextChangedListener$textWatcher$1);
        return textViewKt$addTextChangedListener$textWatcher$1;
    }

    public static /* synthetic */ TextWatcher addTextChangedListener$default(TextView textView, o oVar, o oVar2, Function1 function1, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            oVar = new o<CharSequence, Integer, Integer, Integer, Unit>() { // from class: androidx.core.widget.TextViewKt$addTextChangedListener$1
                public final void invoke(@Nullable CharSequence charSequence, int i11, int i12, int i13) {
                }

                @Override // at.o
                public /* bridge */ /* synthetic */ Unit invoke(CharSequence charSequence, Integer num, Integer num2, Integer num3) {
                    invoke(charSequence, num.intValue(), num2.intValue(), num3.intValue());
                    return Unit.f60915a;
                }
            };
        }
        if ((i10 & 2) != 0) {
            oVar2 = new o<CharSequence, Integer, Integer, Integer, Unit>() { // from class: androidx.core.widget.TextViewKt$addTextChangedListener$2
                public final void invoke(@Nullable CharSequence charSequence, int i11, int i12, int i13) {
                }

                @Override // at.o
                public /* bridge */ /* synthetic */ Unit invoke(CharSequence charSequence, Integer num, Integer num2, Integer num3) {
                    invoke(charSequence, num.intValue(), num2.intValue(), num3.intValue());
                    return Unit.f60915a;
                }
            };
        }
        if ((i10 & 4) != 0) {
            function1 = new Function1<Editable, Unit>() { // from class: androidx.core.widget.TextViewKt$addTextChangedListener$3
                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@Nullable Editable editable) {
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Editable editable) {
                    invoke2(editable);
                    return Unit.f60915a;
                }
            };
        }
        TextViewKt$addTextChangedListener$textWatcher$1 textViewKt$addTextChangedListener$textWatcher$1 = new TextViewKt$addTextChangedListener$textWatcher$1(function1, oVar, oVar2);
        textView.addTextChangedListener(textViewKt$addTextChangedListener$textWatcher$1);
        return textViewKt$addTextChangedListener$textWatcher$1;
    }

    @NotNull
    public static final TextWatcher doAfterTextChanged(@NotNull TextView textView, @NotNull final Function1<? super Editable, Unit> function1) {
        TextWatcher textWatcher = new TextWatcher() { // from class: androidx.core.widget.TextViewKt$doAfterTextChanged$$inlined$addTextChangedListener$default$1
            @Override // android.text.TextWatcher
            public void afterTextChanged(@Nullable Editable editable) {
                Function1.this.invoke(editable);
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
            }
        };
        textView.addTextChangedListener(textWatcher);
        return textWatcher;
    }

    @NotNull
    public static final TextWatcher doBeforeTextChanged(@NotNull TextView textView, @NotNull final o<? super CharSequence, ? super Integer, ? super Integer, ? super Integer, Unit> oVar) {
        TextWatcher textWatcher = new TextWatcher() { // from class: androidx.core.widget.TextViewKt$doBeforeTextChanged$$inlined$addTextChangedListener$default$1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
                o.this.invoke(charSequence, Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12));
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(@Nullable Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
            }
        };
        textView.addTextChangedListener(textWatcher);
        return textWatcher;
    }

    @NotNull
    public static final TextWatcher doOnTextChanged(@NotNull TextView textView, @NotNull final o<? super CharSequence, ? super Integer, ? super Integer, ? super Integer, Unit> oVar) {
        TextWatcher textWatcher = new TextWatcher() { // from class: androidx.core.widget.TextViewKt$doOnTextChanged$$inlined$addTextChangedListener$default$1
            @Override // android.text.TextWatcher
            public void onTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
                o.this.invoke(charSequence, Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12));
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(@Nullable Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
            }
        };
        textView.addTextChangedListener(textWatcher);
        return textWatcher;
    }
}
