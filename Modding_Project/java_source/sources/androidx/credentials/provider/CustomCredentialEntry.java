package androidx.credentials.provider;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.app.slice.Slice;
import android.app.slice.SliceItem;
import android.app.slice.SliceSpec;
import android.content.Context;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.credentials.CredentialOption;
import androidx.credentials.R;
import java.time.Instant;
import java.util.Collections;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CustomCredentialEntry.kt */
@RequiresApi(26)
@Metadata
@SourceDebugExtension({"SMAP\nCustomCredentialEntry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomCredentialEntry.kt\nandroidx/credentials/provider/CustomCredentialEntry\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,458:1\n1#2:459\n*E\n"})
/* loaded from: classes.dex */
public final class CustomCredentialEntry extends CredentialEntry {
    @NotNull
    private static final String AUTO_SELECT_FALSE_STRING = "false";
    @NotNull
    private static final String AUTO_SELECT_TRUE_STRING = "true";
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int REVISION_ID = 1;
    @NotNull
    private static final String SLICE_HINT_AUTO_ALLOWED = "androidx.credentials.provider.credentialEntry.SLICE_HINT_AUTO_ALLOWED";
    @NotNull
    private static final String SLICE_HINT_AUTO_SELECT_FROM_OPTION = "androidx.credentials.provider.credentialEntry.SLICE_HINT_AUTO_SELECT_FROM_OPTION";
    @NotNull
    private static final String SLICE_HINT_DEFAULT_ICON_RES_ID = "androidx.credentials.provider.credentialEntry.SLICE_HINT_DEFAULT_ICON_RES_ID";
    @NotNull
    private static final String SLICE_HINT_ICON = "androidx.credentials.provider.credentialEntry.SLICE_HINT_PROFILE_ICON";
    @NotNull
    private static final String SLICE_HINT_LAST_USED_TIME_MILLIS = "androidx.credentials.provider.credentialEntry.SLICE_HINT_LAST_USED_TIME_MILLIS";
    @NotNull
    private static final String SLICE_HINT_OPTION_ID = "androidx.credentials.provider.credentialEntry.SLICE_HINT_OPTION_ID";
    @NotNull
    private static final String SLICE_HINT_PENDING_INTENT = "androidx.credentials.provider.credentialEntry.SLICE_HINT_PENDING_INTENT";
    @NotNull
    private static final String SLICE_HINT_SUBTITLE = "androidx.credentials.provider.credentialEntry.SLICE_HINT_CREDENTIAL_TYPE_DISPLAY_NAME";
    @NotNull
    private static final String SLICE_HINT_TITLE = "androidx.credentials.provider.credentialEntry.SLICE_HINT_USER_NAME";
    @NotNull
    private static final String SLICE_HINT_TYPE_DISPLAY_NAME = "androidx.credentials.provider.credentialEntry.SLICE_HINT_TYPE_DISPLAY_NAME";
    @NotNull
    private static final String TAG = "CredentialEntry";
    private final boolean autoSelectAllowedFromOption;
    @NotNull
    private final Icon icon;
    private final boolean isAutoSelectAllowed;
    private final boolean isDefaultIcon;
    @Nullable
    private final Instant lastUsedTime;
    @NotNull
    private final PendingIntent pendingIntent;
    @Nullable
    private final CharSequence subtitle;
    @NotNull
    private final CharSequence title;
    @NotNull
    private final String type;
    @Nullable
    private final CharSequence typeDisplayName;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CustomCredentialEntry.kt */
    @Metadata
    @RequiresApi(28)
    @SourceDebugExtension({"SMAP\nCustomCredentialEntry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomCredentialEntry.kt\nandroidx/credentials/provider/CustomCredentialEntry$Api28Impl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,458:1\n1855#2,2:459\n*S KotlinDebug\n*F\n+ 1 CustomCredentialEntry.kt\nandroidx/credentials/provider/CustomCredentialEntry$Api28Impl\n*L\n243#1:459,2\n*E\n"})
    /* loaded from: classes.dex */
    public static final class Api28Impl {
        @NotNull
        public static final Api28Impl INSTANCE = new Api28Impl();

        private Api28Impl() {
        }

        @SuppressLint({"WrongConstant"})
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        @Nullable
        public static final CustomCredentialEntry fromSlice(@NotNull Slice slice) {
            Intrinsics.checkNotNullParameter(slice, "slice");
            SliceSpec spec = slice.getSpec();
            Intrinsics.checkNotNull(spec);
            String type = spec.getType();
            Intrinsics.checkNotNullExpressionValue(type, "slice.spec!!.type");
            List<SliceItem> items = slice.getItems();
            Intrinsics.checkNotNullExpressionValue(items, "slice.items");
            CharSequence charSequence = null;
            PendingIntent pendingIntent = null;
            CharSequence charSequence2 = null;
            CharSequence charSequence3 = null;
            Icon icon = null;
            Instant instant = null;
            boolean z10 = false;
            boolean z11 = false;
            boolean z12 = false;
            CharSequence charSequence4 = null;
            for (SliceItem sliceItem : items) {
                if (sliceItem.hasHint(CustomCredentialEntry.SLICE_HINT_TYPE_DISPLAY_NAME)) {
                    charSequence3 = sliceItem.getText();
                } else if (sliceItem.hasHint(CustomCredentialEntry.SLICE_HINT_TITLE)) {
                    charSequence = sliceItem.getText();
                } else if (sliceItem.hasHint(CustomCredentialEntry.SLICE_HINT_SUBTITLE)) {
                    charSequence2 = sliceItem.getText();
                } else if (sliceItem.hasHint(CustomCredentialEntry.SLICE_HINT_ICON)) {
                    icon = sliceItem.getIcon();
                } else if (sliceItem.hasHint(CustomCredentialEntry.SLICE_HINT_PENDING_INTENT)) {
                    pendingIntent = sliceItem.getAction();
                } else if (sliceItem.hasHint(CustomCredentialEntry.SLICE_HINT_OPTION_ID)) {
                    charSequence4 = sliceItem.getText();
                } else if (sliceItem.hasHint(CustomCredentialEntry.SLICE_HINT_LAST_USED_TIME_MILLIS)) {
                    instant = Instant.ofEpochMilli(sliceItem.getLong());
                } else if (sliceItem.hasHint(CustomCredentialEntry.SLICE_HINT_AUTO_ALLOWED)) {
                    if (Intrinsics.areEqual(sliceItem.getText(), CustomCredentialEntry.AUTO_SELECT_TRUE_STRING)) {
                        z10 = true;
                    }
                } else if (sliceItem.hasHint(CustomCredentialEntry.SLICE_HINT_AUTO_SELECT_FROM_OPTION)) {
                    z11 = true;
                } else if (sliceItem.hasHint(CustomCredentialEntry.SLICE_HINT_DEFAULT_ICON_RES_ID)) {
                    z12 = true;
                }
            }
            try {
                Intrinsics.checkNotNull(charSequence);
                Intrinsics.checkNotNull(pendingIntent);
                Intrinsics.checkNotNull(icon);
                Intrinsics.checkNotNull(charSequence4);
                return new CustomCredentialEntry(type, charSequence, pendingIntent, z10, charSequence2, charSequence3, icon, instant, new BeginGetCustomCredentialOption(charSequence4.toString(), type, new Bundle()), z11, z12);
            } catch (Exception e10) {
                Log.i(CustomCredentialEntry.TAG, "fromSlice failed with: " + e10.getMessage());
                return null;
            }
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY})
        @NotNull
        public static final Slice toSlice(@NotNull CustomCredentialEntry entry) {
            String str;
            Intrinsics.checkNotNullParameter(entry, "entry");
            String type = entry.getType();
            CharSequence title = entry.getTitle();
            CharSequence subtitle = entry.getSubtitle();
            PendingIntent pendingIntent = entry.getPendingIntent();
            CharSequence typeDisplayName = entry.getTypeDisplayName();
            Instant lastUsedTime = entry.getLastUsedTime();
            Icon icon = entry.getIcon();
            boolean isAutoSelectAllowed = entry.isAutoSelectAllowed();
            BeginGetCredentialOption beginGetCredentialOption = entry.getBeginGetCredentialOption();
            if (isAutoSelectAllowed) {
                str = CustomCredentialEntry.AUTO_SELECT_TRUE_STRING;
            } else {
                str = CustomCredentialEntry.AUTO_SELECT_FALSE_STRING;
            }
            Slice.Builder addIcon = new Slice.Builder(Uri.EMPTY, new SliceSpec(type, 1)).addText(typeDisplayName, null, CollectionsKt.e(CustomCredentialEntry.SLICE_HINT_TYPE_DISPLAY_NAME)).addText(title, null, CollectionsKt.e(CustomCredentialEntry.SLICE_HINT_TITLE)).addText(subtitle, null, CollectionsKt.e(CustomCredentialEntry.SLICE_HINT_SUBTITLE)).addText(str, null, CollectionsKt.e(CustomCredentialEntry.SLICE_HINT_AUTO_ALLOWED)).addText(beginGetCredentialOption.getId(), null, CollectionsKt.e(CustomCredentialEntry.SLICE_HINT_OPTION_ID)).addIcon(icon, null, CollectionsKt.e(CustomCredentialEntry.SLICE_HINT_ICON));
            try {
                if (icon.getResId() == R.drawable.ic_other_sign_in) {
                    addIcon.addInt(1, null, CollectionsKt.e(CustomCredentialEntry.SLICE_HINT_DEFAULT_ICON_RES_ID));
                }
            } catch (IllegalStateException unused) {
            }
            if (CredentialOption.Companion.extractAutoSelectValue$credentials_release(beginGetCredentialOption.getCandidateQueryData())) {
                addIcon.addInt(1, null, CollectionsKt.e(CustomCredentialEntry.SLICE_HINT_AUTO_SELECT_FROM_OPTION));
            }
            if (lastUsedTime != null) {
                addIcon.addLong(lastUsedTime.toEpochMilli(), null, CollectionsKt.e(CustomCredentialEntry.SLICE_HINT_LAST_USED_TIME_MILLIS));
            }
            addIcon.addAction(pendingIntent, new Slice.Builder(addIcon).addHints(Collections.singletonList(CustomCredentialEntry.SLICE_HINT_PENDING_INTENT)).build(), null);
            Slice build = addIcon.build();
            Intrinsics.checkNotNullExpressionValue(build, "sliceBuilder.build()");
            return build;
        }
    }

    /* compiled from: CustomCredentialEntry.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Builder {
        private boolean autoSelectAllowed;
        @NotNull
        private final BeginGetCredentialOption beginGetCredentialOption;
        @NotNull
        private final Context context;
        @Nullable
        private Icon icon;
        @Nullable
        private Instant lastUsedTime;
        @NotNull
        private final PendingIntent pendingIntent;
        @Nullable
        private CharSequence subtitle;
        @NotNull
        private final CharSequence title;
        @NotNull
        private final String type;
        @Nullable
        private CharSequence typeDisplayName;

        public Builder(@NotNull Context context, @NotNull String type, @NotNull CharSequence title, @NotNull PendingIntent pendingIntent, @NotNull BeginGetCredentialOption beginGetCredentialOption) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(title, "title");
            Intrinsics.checkNotNullParameter(pendingIntent, "pendingIntent");
            Intrinsics.checkNotNullParameter(beginGetCredentialOption, "beginGetCredentialOption");
            this.context = context;
            this.type = type;
            this.title = title;
            this.pendingIntent = pendingIntent;
            this.beginGetCredentialOption = beginGetCredentialOption;
        }

        @NotNull
        public final CustomCredentialEntry build() {
            if (this.icon == null) {
                this.icon = Icon.createWithResource(this.context, R.drawable.ic_other_sign_in);
            }
            String str = this.type;
            CharSequence charSequence = this.title;
            PendingIntent pendingIntent = this.pendingIntent;
            boolean z10 = this.autoSelectAllowed;
            CharSequence charSequence2 = this.subtitle;
            CharSequence charSequence3 = this.typeDisplayName;
            Icon icon = this.icon;
            Intrinsics.checkNotNull(icon);
            return new CustomCredentialEntry(str, charSequence, pendingIntent, z10, charSequence2, charSequence3, icon, this.lastUsedTime, this.beginGetCredentialOption, false, false, 1536, null);
        }

        @NotNull
        public final Builder setAutoSelectAllowed(boolean z10) {
            this.autoSelectAllowed = z10;
            return this;
        }

        @NotNull
        public final Builder setIcon(@NotNull Icon icon) {
            Intrinsics.checkNotNullParameter(icon, "icon");
            this.icon = icon;
            return this;
        }

        @NotNull
        public final Builder setLastUsedTime(@Nullable Instant instant) {
            this.lastUsedTime = instant;
            return this;
        }

        @NotNull
        public final Builder setSubtitle(@Nullable CharSequence charSequence) {
            this.subtitle = charSequence;
            return this;
        }

        @NotNull
        public final Builder setTypeDisplayName(@Nullable CharSequence charSequence) {
            this.typeDisplayName = charSequence;
            return this;
        }
    }

    /* compiled from: CustomCredentialEntry.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @SuppressLint({"WrongConstant"})
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        @Nullable
        public final CustomCredentialEntry fromSlice(@NotNull Slice slice) {
            Intrinsics.checkNotNullParameter(slice, "slice");
            if (Build.VERSION.SDK_INT >= 28) {
                return Api28Impl.fromSlice(slice);
            }
            return null;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY})
        @Nullable
        public final Slice toSlice(@NotNull CustomCredentialEntry entry) {
            Intrinsics.checkNotNullParameter(entry, "entry");
            if (Build.VERSION.SDK_INT >= 28) {
                return Api28Impl.toSlice(entry);
            }
            return null;
        }

        private Companion() {
        }
    }

    public /* synthetic */ CustomCredentialEntry(String str, CharSequence charSequence, PendingIntent pendingIntent, boolean z10, CharSequence charSequence2, CharSequence charSequence3, Icon icon, Instant instant, BeginGetCredentialOption beginGetCredentialOption, boolean z11, boolean z12, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, charSequence, pendingIntent, z10, charSequence2, charSequence3, icon, instant, beginGetCredentialOption, (i10 & 512) != 0 ? false : z11, (i10 & 1024) != 0 ? false : z12);
    }

    @SuppressLint({"WrongConstant"})
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @Nullable
    public static final CustomCredentialEntry fromSlice(@NotNull Slice slice) {
        return Companion.fromSlice(slice);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @Nullable
    public static final Slice toSlice(@NotNull CustomCredentialEntry customCredentialEntry) {
        return Companion.toSlice(customCredentialEntry);
    }

    @NotNull
    public final Icon getIcon() {
        return this.icon;
    }

    @Nullable
    public final Instant getLastUsedTime() {
        return this.lastUsedTime;
    }

    @NotNull
    public final PendingIntent getPendingIntent() {
        return this.pendingIntent;
    }

    @Nullable
    public final CharSequence getSubtitle() {
        return this.subtitle;
    }

    @NotNull
    public final CharSequence getTitle() {
        return this.title;
    }

    @Override // androidx.credentials.provider.CredentialEntry
    @NotNull
    public String getType() {
        return this.type;
    }

    @Nullable
    public final CharSequence getTypeDisplayName() {
        return this.typeDisplayName;
    }

    public final boolean isAutoSelectAllowed() {
        return this.isAutoSelectAllowed;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CustomCredentialEntry(@NotNull String type, @NotNull CharSequence title, @NotNull PendingIntent pendingIntent, boolean z10, @Nullable CharSequence charSequence, @Nullable CharSequence charSequence2, @NotNull Icon icon, @Nullable Instant instant, @NotNull BeginGetCredentialOption beginGetCredentialOption, boolean z11, boolean z12) {
        super(type, beginGetCredentialOption);
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(pendingIntent, "pendingIntent");
        Intrinsics.checkNotNullParameter(icon, "icon");
        Intrinsics.checkNotNullParameter(beginGetCredentialOption, "beginGetCredentialOption");
        this.type = type;
        this.title = title;
        this.pendingIntent = pendingIntent;
        this.isAutoSelectAllowed = z10;
        this.subtitle = charSequence;
        this.typeDisplayName = charSequence2;
        this.icon = icon;
        this.lastUsedTime = instant;
        this.autoSelectAllowedFromOption = z11;
        this.isDefaultIcon = z12;
        if (getType().length() > 0) {
            if (title.length() <= 0) {
                throw new IllegalArgumentException("title must not be empty");
            }
            return;
        }
        throw new IllegalArgumentException("type must not be empty");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ CustomCredentialEntry(android.content.Context r14, java.lang.CharSequence r15, android.app.PendingIntent r16, androidx.credentials.provider.BeginGetCredentialOption r17, java.lang.CharSequence r18, java.lang.CharSequence r19, java.time.Instant r20, android.graphics.drawable.Icon r21, boolean r22, int r23, kotlin.jvm.internal.DefaultConstructorMarker r24) {
        /*
            r13 = this;
            r0 = r23
            r1 = r0 & 16
            r2 = 0
            if (r1 == 0) goto L9
            r8 = r2
            goto Lb
        L9:
            r8 = r18
        Lb:
            r1 = r0 & 32
            if (r1 == 0) goto L11
            r9 = r2
            goto L13
        L11:
            r9 = r19
        L13:
            r1 = r0 & 64
            if (r1 == 0) goto L19
            r10 = r2
            goto L1b
        L19:
            r10 = r20
        L1b:
            r1 = r0 & 128(0x80, float:1.794E-43)
            if (r1 == 0) goto L2d
            int r1 = androidx.credentials.R.drawable.ic_other_sign_in
            r2 = r14
            android.graphics.drawable.Icon r1 = android.graphics.drawable.Icon.createWithResource(r14, r1)
            java.lang.String r3 = "createWithResource(conte…rawable.ic_other_sign_in)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r3)
            r11 = r1
            goto L30
        L2d:
            r2 = r14
            r11 = r21
        L30:
            r0 = r0 & 256(0x100, float:3.59E-43)
            if (r0 == 0) goto L37
            r0 = 0
            r12 = r0
            goto L39
        L37:
            r12 = r22
        L39:
            r3 = r13
            r4 = r14
            r5 = r15
            r6 = r16
            r7 = r17
            r3.<init>(r4, r5, r6, r7, r8, r9, r10, r11, r12)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.credentials.provider.CustomCredentialEntry.<init>(android.content.Context, java.lang.CharSequence, android.app.PendingIntent, androidx.credentials.provider.BeginGetCredentialOption, java.lang.CharSequence, java.lang.CharSequence, java.time.Instant, android.graphics.drawable.Icon, boolean, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CustomCredentialEntry(@NotNull Context context, @NotNull CharSequence title, @NotNull PendingIntent pendingIntent, @NotNull BeginGetCredentialOption beginGetCredentialOption, @Nullable CharSequence charSequence, @Nullable CharSequence charSequence2, @Nullable Instant instant, @NotNull Icon icon, boolean z10) {
        this(beginGetCredentialOption.getType(), title, pendingIntent, z10, charSequence, charSequence2, icon, instant, beginGetCredentialOption, false, false, 1536, null);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(pendingIntent, "pendingIntent");
        Intrinsics.checkNotNullParameter(beginGetCredentialOption, "beginGetCredentialOption");
        Intrinsics.checkNotNullParameter(icon, "icon");
    }
}
