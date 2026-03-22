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
import androidx.credentials.PasswordCredential;
import androidx.credentials.R;
import androidx.credentials.provider.BeginGetPasswordOption;
import com.google.android.material.internal.ViewUtils;
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
/* compiled from: PasswordCredentialEntry.kt */
@RequiresApi(26)
@Metadata
@SourceDebugExtension({"SMAP\nPasswordCredentialEntry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PasswordCredentialEntry.kt\nandroidx/credentials/provider/PasswordCredentialEntry\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,450:1\n1#2:451\n*E\n"})
/* loaded from: classes.dex */
public final class PasswordCredentialEntry extends CredentialEntry {
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
    private static final String TAG = "PasswordCredentialEntry";
    private final boolean autoSelectAllowedFromOption;
    @Nullable
    private final CharSequence displayName;
    @NotNull
    private final Icon icon;
    private final boolean isAutoSelectAllowed;
    private final boolean isDefaultIcon;
    @Nullable
    private final Instant lastUsedTime;
    @NotNull
    private final PendingIntent pendingIntent;
    @NotNull
    private final CharSequence typeDisplayName;
    @NotNull
    private final CharSequence username;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: PasswordCredentialEntry.kt */
    @Metadata
    @RequiresApi(28)
    @SourceDebugExtension({"SMAP\nPasswordCredentialEntry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PasswordCredentialEntry.kt\nandroidx/credentials/provider/PasswordCredentialEntry$Api28Impl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,450:1\n1855#2,2:451\n*S KotlinDebug\n*F\n+ 1 PasswordCredentialEntry.kt\nandroidx/credentials/provider/PasswordCredentialEntry$Api28Impl\n*L\n249#1:451,2\n*E\n"})
    /* loaded from: classes.dex */
    public static final class Api28Impl {
        @NotNull
        public static final Api28Impl INSTANCE = new Api28Impl();

        private Api28Impl() {
        }

        @SuppressLint({"WrongConstant"})
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        @Nullable
        public static final PasswordCredentialEntry fromSlice(@NotNull Slice slice) {
            Intrinsics.checkNotNullParameter(slice, "slice");
            List<SliceItem> items = slice.getItems();
            Intrinsics.checkNotNullExpressionValue(items, "slice.items");
            CharSequence charSequence = null;
            CharSequence charSequence2 = null;
            CharSequence charSequence3 = null;
            PendingIntent pendingIntent = null;
            Instant instant = null;
            Icon icon = null;
            boolean z10 = false;
            boolean z11 = false;
            boolean z12 = false;
            CharSequence charSequence4 = null;
            for (SliceItem sliceItem : items) {
                if (sliceItem.hasHint(PasswordCredentialEntry.SLICE_HINT_TYPE_DISPLAY_NAME)) {
                    charSequence3 = sliceItem.getText();
                } else if (sliceItem.hasHint(PasswordCredentialEntry.SLICE_HINT_TITLE)) {
                    charSequence = sliceItem.getText();
                } else if (sliceItem.hasHint(PasswordCredentialEntry.SLICE_HINT_SUBTITLE)) {
                    charSequence2 = sliceItem.getText();
                } else if (sliceItem.hasHint(PasswordCredentialEntry.SLICE_HINT_ICON)) {
                    icon = sliceItem.getIcon();
                } else if (sliceItem.hasHint(PasswordCredentialEntry.SLICE_HINT_PENDING_INTENT)) {
                    pendingIntent = sliceItem.getAction();
                } else if (sliceItem.hasHint(PasswordCredentialEntry.SLICE_HINT_OPTION_ID)) {
                    charSequence4 = sliceItem.getText();
                } else if (sliceItem.hasHint(PasswordCredentialEntry.SLICE_HINT_LAST_USED_TIME_MILLIS)) {
                    instant = Instant.ofEpochMilli(sliceItem.getLong());
                } else if (sliceItem.hasHint(PasswordCredentialEntry.SLICE_HINT_AUTO_ALLOWED)) {
                    if (Intrinsics.areEqual(sliceItem.getText(), PasswordCredentialEntry.AUTO_SELECT_TRUE_STRING)) {
                        z10 = true;
                    }
                } else if (sliceItem.hasHint(PasswordCredentialEntry.SLICE_HINT_AUTO_SELECT_FROM_OPTION)) {
                    z11 = true;
                } else if (sliceItem.hasHint(PasswordCredentialEntry.SLICE_HINT_DEFAULT_ICON_RES_ID)) {
                    z12 = true;
                }
            }
            try {
                Intrinsics.checkNotNull(charSequence);
                Intrinsics.checkNotNull(charSequence3);
                Intrinsics.checkNotNull(pendingIntent);
                Intrinsics.checkNotNull(icon);
                BeginGetPasswordOption.Companion companion = BeginGetPasswordOption.Companion;
                Bundle bundle = new Bundle();
                Intrinsics.checkNotNull(charSequence4);
                return new PasswordCredentialEntry(charSequence, charSequence2, charSequence3, pendingIntent, instant, icon, z10, companion.createFrom$credentials_release(bundle, charSequence4.toString()), z11, z12);
            } catch (Exception e10) {
                Log.i(PasswordCredentialEntry.TAG, "fromSlice failed with: " + e10.getMessage());
                return null;
            }
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY})
        @NotNull
        public static final Slice toSlice(@NotNull PasswordCredentialEntry entry) {
            String str;
            Intrinsics.checkNotNullParameter(entry, "entry");
            String type = entry.getType();
            CharSequence username = entry.getUsername();
            CharSequence displayName = entry.getDisplayName();
            PendingIntent pendingIntent = entry.getPendingIntent();
            CharSequence typeDisplayName = entry.getTypeDisplayName();
            Instant lastUsedTime = entry.getLastUsedTime();
            Icon icon = entry.getIcon();
            boolean isAutoSelectAllowed = entry.isAutoSelectAllowed();
            BeginGetCredentialOption beginGetCredentialOption = entry.getBeginGetCredentialOption();
            if (isAutoSelectAllowed) {
                str = PasswordCredentialEntry.AUTO_SELECT_TRUE_STRING;
            } else {
                str = PasswordCredentialEntry.AUTO_SELECT_FALSE_STRING;
            }
            Slice.Builder addIcon = new Slice.Builder(Uri.EMPTY, new SliceSpec(type, 1)).addText(typeDisplayName, null, CollectionsKt.e(PasswordCredentialEntry.SLICE_HINT_TYPE_DISPLAY_NAME)).addText(username, null, CollectionsKt.e(PasswordCredentialEntry.SLICE_HINT_TITLE)).addText(displayName, null, CollectionsKt.e(PasswordCredentialEntry.SLICE_HINT_SUBTITLE)).addText(str, null, CollectionsKt.e(PasswordCredentialEntry.SLICE_HINT_AUTO_ALLOWED)).addText(beginGetCredentialOption.getId(), null, CollectionsKt.e(PasswordCredentialEntry.SLICE_HINT_OPTION_ID)).addIcon(icon, null, CollectionsKt.e(PasswordCredentialEntry.SLICE_HINT_ICON));
            try {
                if (icon.getResId() == R.drawable.ic_password) {
                    addIcon.addInt(1, null, CollectionsKt.e(PasswordCredentialEntry.SLICE_HINT_DEFAULT_ICON_RES_ID));
                }
            } catch (IllegalStateException unused) {
            }
            if (CredentialOption.Companion.extractAutoSelectValue$credentials_release(beginGetCredentialOption.getCandidateQueryData())) {
                addIcon.addInt(1, null, CollectionsKt.e(PasswordCredentialEntry.SLICE_HINT_AUTO_SELECT_FROM_OPTION));
            }
            if (lastUsedTime != null) {
                addIcon.addLong(lastUsedTime.toEpochMilli(), null, CollectionsKt.e(PasswordCredentialEntry.SLICE_HINT_LAST_USED_TIME_MILLIS));
            }
            addIcon.addAction(pendingIntent, new Slice.Builder(addIcon).addHints(Collections.singletonList(PasswordCredentialEntry.SLICE_HINT_PENDING_INTENT)).build(), null);
            Slice build = addIcon.build();
            Intrinsics.checkNotNullExpressionValue(build, "sliceBuilder.build()");
            return build;
        }
    }

    /* compiled from: PasswordCredentialEntry.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Builder {
        private boolean autoSelectAllowed;
        @NotNull
        private final BeginGetPasswordOption beginGetPasswordOption;
        @NotNull
        private final Context context;
        @Nullable
        private CharSequence displayName;
        @Nullable
        private Icon icon;
        @Nullable
        private Instant lastUsedTime;
        @NotNull
        private final PendingIntent pendingIntent;
        @NotNull
        private final CharSequence username;

        public Builder(@NotNull Context context, @NotNull CharSequence username, @NotNull PendingIntent pendingIntent, @NotNull BeginGetPasswordOption beginGetPasswordOption) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(username, "username");
            Intrinsics.checkNotNullParameter(pendingIntent, "pendingIntent");
            Intrinsics.checkNotNullParameter(beginGetPasswordOption, "beginGetPasswordOption");
            this.context = context;
            this.username = username;
            this.pendingIntent = pendingIntent;
            this.beginGetPasswordOption = beginGetPasswordOption;
        }

        @NotNull
        public final PasswordCredentialEntry build() {
            if (this.icon == null) {
                this.icon = Icon.createWithResource(this.context, R.drawable.ic_password);
            }
            String string = this.context.getString(R.string.android_credentials_TYPE_PASSWORD_CREDENTIAL);
            Intrinsics.checkNotNullExpressionValue(string, "context.getString(\n     …_CREDENTIAL\n            )");
            CharSequence charSequence = this.username;
            CharSequence charSequence2 = this.displayName;
            PendingIntent pendingIntent = this.pendingIntent;
            Instant instant = this.lastUsedTime;
            Icon icon = this.icon;
            Intrinsics.checkNotNull(icon);
            return new PasswordCredentialEntry(charSequence, charSequence2, string, pendingIntent, instant, icon, this.autoSelectAllowed, this.beginGetPasswordOption, false, false, ViewUtils.EDGE_TO_EDGE_FLAGS, null);
        }

        @NotNull
        public final Builder setAutoSelectAllowed(boolean z10) {
            this.autoSelectAllowed = z10;
            return this;
        }

        @NotNull
        public final Builder setDisplayName(@Nullable CharSequence charSequence) {
            this.displayName = charSequence;
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
    }

    /* compiled from: PasswordCredentialEntry.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY})
        @Nullable
        public final PasswordCredentialEntry fromSlice(@NotNull Slice slice) {
            Intrinsics.checkNotNullParameter(slice, "slice");
            if (Build.VERSION.SDK_INT >= 28) {
                return Api28Impl.fromSlice(slice);
            }
            return null;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY})
        @Nullable
        public final Slice toSlice(@NotNull PasswordCredentialEntry entry) {
            Intrinsics.checkNotNullParameter(entry, "entry");
            if (Build.VERSION.SDK_INT >= 28) {
                return Api28Impl.toSlice(entry);
            }
            return null;
        }

        private Companion() {
        }
    }

    public /* synthetic */ PasswordCredentialEntry(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, PendingIntent pendingIntent, Instant instant, Icon icon, boolean z10, BeginGetPasswordOption beginGetPasswordOption, boolean z11, boolean z12, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(charSequence, charSequence2, charSequence3, pendingIntent, instant, icon, z10, beginGetPasswordOption, (i10 & 256) != 0 ? false : z11, (i10 & 512) != 0 ? false : z12);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @Nullable
    public static final PasswordCredentialEntry fromSlice(@NotNull Slice slice) {
        return Companion.fromSlice(slice);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @Nullable
    public static final Slice toSlice(@NotNull PasswordCredentialEntry passwordCredentialEntry) {
        return Companion.toSlice(passwordCredentialEntry);
    }

    @Nullable
    public final CharSequence getDisplayName() {
        return this.displayName;
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

    @NotNull
    public final CharSequence getTypeDisplayName() {
        return this.typeDisplayName;
    }

    @NotNull
    public final CharSequence getUsername() {
        return this.username;
    }

    public final boolean isAutoSelectAllowed() {
        return this.isAutoSelectAllowed;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PasswordCredentialEntry(@NotNull CharSequence username, @Nullable CharSequence charSequence, @NotNull CharSequence typeDisplayName, @NotNull PendingIntent pendingIntent, @Nullable Instant instant, @NotNull Icon icon, boolean z10, @NotNull BeginGetPasswordOption beginGetPasswordOption, boolean z11, boolean z12) {
        super(PasswordCredential.TYPE_PASSWORD_CREDENTIAL, beginGetPasswordOption);
        Intrinsics.checkNotNullParameter(username, "username");
        Intrinsics.checkNotNullParameter(typeDisplayName, "typeDisplayName");
        Intrinsics.checkNotNullParameter(pendingIntent, "pendingIntent");
        Intrinsics.checkNotNullParameter(icon, "icon");
        Intrinsics.checkNotNullParameter(beginGetPasswordOption, "beginGetPasswordOption");
        this.username = username;
        this.displayName = charSequence;
        this.typeDisplayName = typeDisplayName;
        this.pendingIntent = pendingIntent;
        this.lastUsedTime = instant;
        this.icon = icon;
        this.isAutoSelectAllowed = z10;
        this.autoSelectAllowedFromOption = z11;
        this.isDefaultIcon = z12;
        if (username.length() <= 0) {
            throw new IllegalArgumentException("username must not be empty");
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ PasswordCredentialEntry(android.content.Context r13, java.lang.CharSequence r14, android.app.PendingIntent r15, androidx.credentials.provider.BeginGetPasswordOption r16, java.lang.CharSequence r17, java.time.Instant r18, android.graphics.drawable.Icon r19, boolean r20, int r21, kotlin.jvm.internal.DefaultConstructorMarker r22) {
        /*
            r12 = this;
            r0 = r21
            r1 = r0 & 16
            r2 = 0
            if (r1 == 0) goto L9
            r8 = r2
            goto Lb
        L9:
            r8 = r17
        Lb:
            r1 = r0 & 32
            if (r1 == 0) goto L11
            r9 = r2
            goto L13
        L11:
            r9 = r18
        L13:
            r1 = r0 & 64
            if (r1 == 0) goto L25
            int r1 = androidx.credentials.R.drawable.ic_password
            r2 = r13
            android.graphics.drawable.Icon r1 = android.graphics.drawable.Icon.createWithResource(r13, r1)
            java.lang.String r3 = "createWithResource(conte…, R.drawable.ic_password)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r3)
            r10 = r1
            goto L28
        L25:
            r2 = r13
            r10 = r19
        L28:
            r0 = r0 & 128(0x80, float:1.794E-43)
            if (r0 == 0) goto L2f
            r0 = 0
            r11 = r0
            goto L31
        L2f:
            r11 = r20
        L31:
            r3 = r12
            r4 = r13
            r5 = r14
            r6 = r15
            r7 = r16
            r3.<init>(r4, r5, r6, r7, r8, r9, r10, r11)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.credentials.provider.PasswordCredentialEntry.<init>(android.content.Context, java.lang.CharSequence, android.app.PendingIntent, androidx.credentials.provider.BeginGetPasswordOption, java.lang.CharSequence, java.time.Instant, android.graphics.drawable.Icon, boolean, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public PasswordCredentialEntry(@org.jetbrains.annotations.NotNull android.content.Context r16, @org.jetbrains.annotations.NotNull java.lang.CharSequence r17, @org.jetbrains.annotations.NotNull android.app.PendingIntent r18, @org.jetbrains.annotations.NotNull androidx.credentials.provider.BeginGetPasswordOption r19, @org.jetbrains.annotations.Nullable java.lang.CharSequence r20, @org.jetbrains.annotations.Nullable java.time.Instant r21, @org.jetbrains.annotations.NotNull android.graphics.drawable.Icon r22, boolean r23) {
        /*
            r15 = this;
            r0 = r16
            java.lang.String r1 = "context"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r1)
            java.lang.String r1 = "username"
            r3 = r17
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r1)
            java.lang.String r1 = "pendingIntent"
            r6 = r18
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r1)
            java.lang.String r1 = "beginGetPasswordOption"
            r10 = r19
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r1)
            java.lang.String r1 = "icon"
            r8 = r22
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r1)
            int r1 = androidx.credentials.R.string.android_credentials_TYPE_PASSWORD_CREDENTIAL
            java.lang.String r5 = r0.getString(r1)
            java.lang.String r0 = "context.getString(\n     …WORD_CREDENTIAL\n        )"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r0)
            r13 = 768(0x300, float:1.076E-42)
            r14 = 0
            r11 = 0
            r12 = 0
            r2 = r15
            r4 = r20
            r7 = r21
            r9 = r23
            r2.<init>(r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.credentials.provider.PasswordCredentialEntry.<init>(android.content.Context, java.lang.CharSequence, android.app.PendingIntent, androidx.credentials.provider.BeginGetPasswordOption, java.lang.CharSequence, java.time.Instant, android.graphics.drawable.Icon, boolean):void");
    }
}
