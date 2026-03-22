package androidx.credentials.provider.utils;

import android.annotation.SuppressLint;
import android.app.slice.Slice;
import android.content.pm.SigningInfo;
import android.os.Bundle;
import android.service.credentials.BeginGetCredentialOption;
import android.service.credentials.BeginGetCredentialRequest;
import android.service.credentials.BeginGetCredentialResponse;
import android.service.credentials.CallingAppInfo;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.credentials.provider.Action;
import androidx.credentials.provider.AuthenticationAction;
import androidx.credentials.provider.BeginGetCredentialOption;
import androidx.credentials.provider.CredentialEntry;
import androidx.credentials.provider.RemoteEntry;
import androidx.credentials.provider.utils.BeginGetCredentialUtil;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BeginGetCredentialUtil.kt */
@RequiresApi(34)
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class BeginGetCredentialUtil {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* compiled from: BeginGetCredentialUtil.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nBeginGetCredentialUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BeginGetCredentialUtil.kt\nandroidx/credentials/provider/utils/BeginGetCredentialUtil$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,178:1\n1855#2,2:179\n1855#2,2:181\n1855#2,2:183\n1855#2,2:185\n1#3:187\n*S KotlinDebug\n*F\n+ 1 BeginGetCredentialUtil.kt\nandroidx/credentials/provider/utils/BeginGetCredentialUtil$Companion\n*L\n43#1:179,2\n86#1:181,2\n99#1:183,2\n112#1:185,2\n*E\n"})
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final BeginGetCredentialOption convertToFrameworkRequest$lambda$5(Function1 tmp0, Object obj) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            return q0.a(tmp0.invoke(obj));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final BeginGetCredentialOption convertToJetpackBeginOption(androidx.credentials.provider.BeginGetCredentialOption beginGetCredentialOption) {
            l0.a();
            return i0.a(beginGetCredentialOption.getId(), beginGetCredentialOption.getType(), beginGetCredentialOption.getCandidateQueryData());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean convertToJetpackResponse$lambda$10(Function1 tmp0, Object obj) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            return ((Boolean) tmp0.invoke(obj)).booleanValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Action convertToJetpackResponse$lambda$11(Function1 tmp0, Object obj) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            return (Action) tmp0.invoke(obj);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final AuthenticationAction convertToJetpackResponse$lambda$12(Function1 tmp0, Object obj) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            return (AuthenticationAction) tmp0.invoke(obj);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean convertToJetpackResponse$lambda$13(Function1 tmp0, Object obj) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            return ((Boolean) tmp0.invoke(obj)).booleanValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final AuthenticationAction convertToJetpackResponse$lambda$14(Function1 tmp0, Object obj) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            return (AuthenticationAction) tmp0.invoke(obj);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final CredentialEntry convertToJetpackResponse$lambda$6(Function1 tmp0, Object obj) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            return (CredentialEntry) tmp0.invoke(obj);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean convertToJetpackResponse$lambda$7(Function1 tmp0, Object obj) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            return ((Boolean) tmp0.invoke(obj)).booleanValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final CredentialEntry convertToJetpackResponse$lambda$8(Function1 tmp0, Object obj) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            return (CredentialEntry) tmp0.invoke(obj);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Action convertToJetpackResponse$lambda$9(Function1 tmp0, Object obj) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            return (Action) tmp0.invoke(obj);
        }

        private final void populateActionEntries(BeginGetCredentialResponse.Builder builder, List<Action> list) {
            for (Action action : list) {
                g0.a();
                builder.addAction(f0.a(Action.Companion.toSlice(action)));
            }
        }

        private final void populateAuthenticationEntries(BeginGetCredentialResponse.Builder builder, List<AuthenticationAction> list) {
            for (AuthenticationAction authenticationAction : list) {
                g0.a();
                builder.addAuthenticationAction(f0.a(AuthenticationAction.Companion.toSlice(authenticationAction)));
            }
        }

        private final void populateCredentialEntries(BeginGetCredentialResponse.Builder builder, List<? extends CredentialEntry> list) {
            for (CredentialEntry credentialEntry : list) {
                Slice slice$credentials_release = CredentialEntry.Companion.toSlice$credentials_release(credentialEntry);
                if (slice$credentials_release != null) {
                    k0.a();
                    l0.a();
                    builder.addCredentialEntry(j0.a(i0.a(credentialEntry.getBeginGetCredentialOption().getId(), credentialEntry.getType(), Bundle.EMPTY), slice$credentials_release));
                }
            }
        }

        @SuppressLint({"MissingPermission"})
        private final void populateRemoteEntry(BeginGetCredentialResponse.Builder builder, RemoteEntry remoteEntry) {
            if (remoteEntry == null) {
                return;
            }
            b.a();
            builder.setRemoteCredentialEntry(q.a(RemoteEntry.Companion.toSlice(remoteEntry)));
        }

        @NotNull
        public final BeginGetCredentialRequest convertToFrameworkRequest(@NotNull androidx.credentials.provider.BeginGetCredentialRequest request) {
            BeginGetCredentialRequest.Builder beginGetCredentialOptions;
            BeginGetCredentialRequest build;
            Intrinsics.checkNotNullParameter(request, "request");
            BeginGetCredentialRequest.Builder a10 = n0.a();
            if (request.getCallingAppInfo() != null) {
                e.a();
                a10.setCallingAppInfo(c.a(request.getCallingAppInfo().getPackageName(), request.getCallingAppInfo().getSigningInfo(), request.getCallingAppInfo().getOrigin()));
            }
            Stream<androidx.credentials.provider.BeginGetCredentialOption> stream = request.getBeginGetCredentialOptions().stream();
            final BeginGetCredentialUtil$Companion$convertToFrameworkRequest$1 beginGetCredentialUtil$Companion$convertToFrameworkRequest$1 = new Function1<androidx.credentials.provider.BeginGetCredentialOption, BeginGetCredentialOption>() { // from class: androidx.credentials.provider.utils.BeginGetCredentialUtil$Companion$convertToFrameworkRequest$1
                @Override // kotlin.jvm.functions.Function1
                public final BeginGetCredentialOption invoke(androidx.credentials.provider.BeginGetCredentialOption option) {
                    BeginGetCredentialOption convertToJetpackBeginOption;
                    BeginGetCredentialUtil.Companion companion = BeginGetCredentialUtil.Companion;
                    Intrinsics.checkNotNullExpressionValue(option, "option");
                    convertToJetpackBeginOption = companion.convertToJetpackBeginOption(option);
                    return convertToJetpackBeginOption;
                }
            };
            beginGetCredentialOptions = a10.setBeginGetCredentialOptions((List) stream.map(new Function() { // from class: androidx.credentials.provider.utils.f1
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    BeginGetCredentialOption convertToFrameworkRequest$lambda$5;
                    convertToFrameworkRequest$lambda$5 = BeginGetCredentialUtil.Companion.convertToFrameworkRequest$lambda$5(Function1.this, obj);
                    return convertToFrameworkRequest$lambda$5;
                }
            }).collect(Collectors.toList()));
            build = beginGetCredentialOptions.build();
            Intrinsics.checkNotNullExpressionValue(build, "builder.setBeginGetCrede…\n                .build()");
            return build;
        }

        @NotNull
        public final BeginGetCredentialResponse convertToFrameworkResponse(@NotNull androidx.credentials.provider.BeginGetCredentialResponse response) {
            BeginGetCredentialResponse build;
            Intrinsics.checkNotNullParameter(response, "response");
            BeginGetCredentialResponse.Builder a10 = m0.a();
            populateCredentialEntries(a10, response.getCredentialEntries());
            populateActionEntries(a10, response.getActions());
            populateAuthenticationEntries(a10, response.getAuthenticationActions());
            populateRemoteEntry(a10, response.getRemoteEntry());
            build = a10.build();
            Intrinsics.checkNotNullExpressionValue(build, "frameworkBuilder.build()");
            return build;
        }

        @NotNull
        public final androidx.credentials.provider.BeginGetCredentialRequest convertToJetpackRequest$credentials_release(@NotNull BeginGetCredentialRequest request) {
            List<Object> beginGetCredentialOptions;
            CallingAppInfo callingAppInfo;
            androidx.credentials.provider.CallingAppInfo callingAppInfo2;
            String packageName;
            SigningInfo signingInfo;
            String origin;
            String id2;
            String type;
            Bundle candidateQueryData;
            Intrinsics.checkNotNullParameter(request, "request");
            ArrayList arrayList = new ArrayList();
            beginGetCredentialOptions = request.getBeginGetCredentialOptions();
            Intrinsics.checkNotNullExpressionValue(beginGetCredentialOptions, "request.beginGetCredentialOptions");
            for (Object obj : beginGetCredentialOptions) {
                BeginGetCredentialOption a10 = q0.a(obj);
                BeginGetCredentialOption.Companion companion = androidx.credentials.provider.BeginGetCredentialOption.Companion;
                id2 = a10.getId();
                Intrinsics.checkNotNullExpressionValue(id2, "it.id");
                type = a10.getType();
                Intrinsics.checkNotNullExpressionValue(type, "it.type");
                candidateQueryData = a10.getCandidateQueryData();
                Intrinsics.checkNotNullExpressionValue(candidateQueryData, "it.candidateQueryData");
                arrayList.add(companion.createFrom$credentials_release(id2, type, candidateQueryData));
            }
            callingAppInfo = request.getCallingAppInfo();
            if (callingAppInfo != null) {
                packageName = callingAppInfo.getPackageName();
                Intrinsics.checkNotNullExpressionValue(packageName, "it.packageName");
                signingInfo = callingAppInfo.getSigningInfo();
                Intrinsics.checkNotNullExpressionValue(signingInfo, "it.signingInfo");
                origin = callingAppInfo.getOrigin();
                callingAppInfo2 = new androidx.credentials.provider.CallingAppInfo(packageName, signingInfo, origin);
            } else {
                callingAppInfo2 = null;
            }
            return new androidx.credentials.provider.BeginGetCredentialRequest(arrayList, callingAppInfo2);
        }

        @NotNull
        public final androidx.credentials.provider.BeginGetCredentialResponse convertToJetpackResponse(@NotNull BeginGetCredentialResponse response) {
            List credentialEntries;
            List actions;
            List authenticationActions;
            android.service.credentials.RemoteEntry remoteCredentialEntry;
            RemoteEntry remoteEntry;
            Slice slice;
            Intrinsics.checkNotNullParameter(response, "response");
            credentialEntries = response.getCredentialEntries();
            Stream stream = credentialEntries.stream();
            final BeginGetCredentialUtil$Companion$convertToJetpackResponse$1 beginGetCredentialUtil$Companion$convertToJetpackResponse$1 = new Function1<android.service.credentials.CredentialEntry, CredentialEntry>() { // from class: androidx.credentials.provider.utils.BeginGetCredentialUtil$Companion$convertToJetpackResponse$1
                @Nullable
                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final CredentialEntry invoke2(android.service.credentials.CredentialEntry credentialEntry) {
                    Slice slice2;
                    CredentialEntry.Companion companion = CredentialEntry.Companion;
                    slice2 = credentialEntry.getSlice();
                    Intrinsics.checkNotNullExpressionValue(slice2, "entry.slice");
                    return companion.createFrom$credentials_release(slice2);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ CredentialEntry invoke(android.service.credentials.CredentialEntry credentialEntry) {
                    return invoke2(g1.a(credentialEntry));
                }
            };
            Stream map = stream.map(new Function() { // from class: androidx.credentials.provider.utils.y0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    CredentialEntry convertToJetpackResponse$lambda$6;
                    convertToJetpackResponse$lambda$6 = BeginGetCredentialUtil.Companion.convertToJetpackResponse$lambda$6(Function1.this, obj);
                    return convertToJetpackResponse$lambda$6;
                }
            });
            final BeginGetCredentialUtil$Companion$convertToJetpackResponse$2 beginGetCredentialUtil$Companion$convertToJetpackResponse$2 = new Function1<CredentialEntry, Boolean>() { // from class: androidx.credentials.provider.utils.BeginGetCredentialUtil$Companion$convertToJetpackResponse$2
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@Nullable CredentialEntry credentialEntry) {
                    return Boolean.valueOf(credentialEntry != null);
                }
            };
            Stream filter = map.filter(new Predicate() { // from class: androidx.credentials.provider.utils.z0
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean convertToJetpackResponse$lambda$7;
                    convertToJetpackResponse$lambda$7 = BeginGetCredentialUtil.Companion.convertToJetpackResponse$lambda$7(Function1.this, obj);
                    return convertToJetpackResponse$lambda$7;
                }
            });
            final BeginGetCredentialUtil$Companion$convertToJetpackResponse$3 beginGetCredentialUtil$Companion$convertToJetpackResponse$3 = new Function1<CredentialEntry, CredentialEntry>() { // from class: androidx.credentials.provider.utils.BeginGetCredentialUtil$Companion$convertToJetpackResponse$3
                @Override // kotlin.jvm.functions.Function1
                public final CredentialEntry invoke(@Nullable CredentialEntry credentialEntry) {
                    Intrinsics.checkNotNull(credentialEntry);
                    return credentialEntry;
                }
            };
            Object collect = filter.map(new Function() { // from class: androidx.credentials.provider.utils.a1
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    CredentialEntry convertToJetpackResponse$lambda$8;
                    convertToJetpackResponse$lambda$8 = BeginGetCredentialUtil.Companion.convertToJetpackResponse$lambda$8(Function1.this, obj);
                    return convertToJetpackResponse$lambda$8;
                }
            }).collect(Collectors.toList());
            Intrinsics.checkNotNullExpressionValue(collect, "response.credentialEntri…lect(Collectors.toList())");
            List list = (List) collect;
            actions = response.getActions();
            Stream stream2 = actions.stream();
            final BeginGetCredentialUtil$Companion$convertToJetpackResponse$4 beginGetCredentialUtil$Companion$convertToJetpackResponse$4 = new Function1<android.service.credentials.Action, Action>() { // from class: androidx.credentials.provider.utils.BeginGetCredentialUtil$Companion$convertToJetpackResponse$4
                @Nullable
                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final Action invoke2(android.service.credentials.Action action) {
                    Slice slice2;
                    Action.Companion companion = Action.Companion;
                    slice2 = action.getSlice();
                    Intrinsics.checkNotNullExpressionValue(slice2, "entry.slice");
                    return companion.fromSlice(slice2);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Action invoke(android.service.credentials.Action action) {
                    return invoke2(j1.a(action));
                }
            };
            Stream map2 = stream2.map(new Function() { // from class: androidx.credentials.provider.utils.b1
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    Action convertToJetpackResponse$lambda$9;
                    convertToJetpackResponse$lambda$9 = BeginGetCredentialUtil.Companion.convertToJetpackResponse$lambda$9(Function1.this, obj);
                    return convertToJetpackResponse$lambda$9;
                }
            });
            final BeginGetCredentialUtil$Companion$convertToJetpackResponse$5 beginGetCredentialUtil$Companion$convertToJetpackResponse$5 = new Function1<Action, Boolean>() { // from class: androidx.credentials.provider.utils.BeginGetCredentialUtil$Companion$convertToJetpackResponse$5
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@Nullable Action action) {
                    return Boolean.valueOf(action != null);
                }
            };
            Stream filter2 = map2.filter(new Predicate() { // from class: androidx.credentials.provider.utils.c1
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean convertToJetpackResponse$lambda$10;
                    convertToJetpackResponse$lambda$10 = BeginGetCredentialUtil.Companion.convertToJetpackResponse$lambda$10(Function1.this, obj);
                    return convertToJetpackResponse$lambda$10;
                }
            });
            final BeginGetCredentialUtil$Companion$convertToJetpackResponse$6 beginGetCredentialUtil$Companion$convertToJetpackResponse$6 = new Function1<Action, Action>() { // from class: androidx.credentials.provider.utils.BeginGetCredentialUtil$Companion$convertToJetpackResponse$6
                @Override // kotlin.jvm.functions.Function1
                public final Action invoke(@Nullable Action action) {
                    Intrinsics.checkNotNull(action);
                    return action;
                }
            };
            Object collect2 = filter2.map(new Function() { // from class: androidx.credentials.provider.utils.d1
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    Action convertToJetpackResponse$lambda$11;
                    convertToJetpackResponse$lambda$11 = BeginGetCredentialUtil.Companion.convertToJetpackResponse$lambda$11(Function1.this, obj);
                    return convertToJetpackResponse$lambda$11;
                }
            }).collect(Collectors.toList());
            Intrinsics.checkNotNullExpressionValue(collect2, "response.actions.stream(…lect(Collectors.toList())");
            List list2 = (List) collect2;
            authenticationActions = response.getAuthenticationActions();
            Stream stream3 = authenticationActions.stream();
            final BeginGetCredentialUtil$Companion$convertToJetpackResponse$7 beginGetCredentialUtil$Companion$convertToJetpackResponse$7 = new Function1<android.service.credentials.Action, AuthenticationAction>() { // from class: androidx.credentials.provider.utils.BeginGetCredentialUtil$Companion$convertToJetpackResponse$7
                @Nullable
                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final AuthenticationAction invoke2(android.service.credentials.Action action) {
                    Slice slice2;
                    AuthenticationAction.Companion companion = AuthenticationAction.Companion;
                    slice2 = action.getSlice();
                    Intrinsics.checkNotNullExpressionValue(slice2, "entry.slice");
                    return companion.fromSlice(slice2);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ AuthenticationAction invoke(android.service.credentials.Action action) {
                    return invoke2(j1.a(action));
                }
            };
            Stream map3 = stream3.map(new Function() { // from class: androidx.credentials.provider.utils.e1
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    AuthenticationAction convertToJetpackResponse$lambda$12;
                    convertToJetpackResponse$lambda$12 = BeginGetCredentialUtil.Companion.convertToJetpackResponse$lambda$12(Function1.this, obj);
                    return convertToJetpackResponse$lambda$12;
                }
            });
            final BeginGetCredentialUtil$Companion$convertToJetpackResponse$8 beginGetCredentialUtil$Companion$convertToJetpackResponse$8 = new Function1<AuthenticationAction, Boolean>() { // from class: androidx.credentials.provider.utils.BeginGetCredentialUtil$Companion$convertToJetpackResponse$8
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@Nullable AuthenticationAction authenticationAction) {
                    return Boolean.valueOf(authenticationAction != null);
                }
            };
            Stream filter3 = map3.filter(new Predicate() { // from class: androidx.credentials.provider.utils.w0
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean convertToJetpackResponse$lambda$13;
                    convertToJetpackResponse$lambda$13 = BeginGetCredentialUtil.Companion.convertToJetpackResponse$lambda$13(Function1.this, obj);
                    return convertToJetpackResponse$lambda$13;
                }
            });
            final BeginGetCredentialUtil$Companion$convertToJetpackResponse$9 beginGetCredentialUtil$Companion$convertToJetpackResponse$9 = new Function1<AuthenticationAction, AuthenticationAction>() { // from class: androidx.credentials.provider.utils.BeginGetCredentialUtil$Companion$convertToJetpackResponse$9
                @Override // kotlin.jvm.functions.Function1
                public final AuthenticationAction invoke(@Nullable AuthenticationAction authenticationAction) {
                    Intrinsics.checkNotNull(authenticationAction);
                    return authenticationAction;
                }
            };
            Object collect3 = filter3.map(new Function() { // from class: androidx.credentials.provider.utils.x0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    AuthenticationAction convertToJetpackResponse$lambda$14;
                    convertToJetpackResponse$lambda$14 = BeginGetCredentialUtil.Companion.convertToJetpackResponse$lambda$14(Function1.this, obj);
                    return convertToJetpackResponse$lambda$14;
                }
            }).collect(Collectors.toList());
            Intrinsics.checkNotNullExpressionValue(collect3, "response.authenticationA…lect(Collectors.toList())");
            List list3 = (List) collect3;
            remoteCredentialEntry = response.getRemoteCredentialEntry();
            if (remoteCredentialEntry != null) {
                RemoteEntry.Companion companion = RemoteEntry.Companion;
                slice = remoteCredentialEntry.getSlice();
                Intrinsics.checkNotNullExpressionValue(slice, "it.slice");
                remoteEntry = companion.fromSlice(slice);
            } else {
                remoteEntry = null;
            }
            return new androidx.credentials.provider.BeginGetCredentialResponse(list, list2, list3, remoteEntry);
        }

        private Companion() {
        }
    }
}
