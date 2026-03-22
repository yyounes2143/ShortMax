package androidx.credentials.exceptions.publickeycredential;

import androidx.annotation.RestrictTo;
import androidx.credentials.exceptions.CreateCredentialCustomException;
import androidx.credentials.exceptions.CreateCredentialException;
import androidx.credentials.exceptions.domerrors.AbortError;
import androidx.credentials.exceptions.domerrors.ConstraintError;
import androidx.credentials.exceptions.domerrors.DataCloneError;
import androidx.credentials.exceptions.domerrors.DataError;
import androidx.credentials.exceptions.domerrors.DomError;
import androidx.credentials.exceptions.domerrors.EncodingError;
import androidx.credentials.exceptions.domerrors.HierarchyRequestError;
import androidx.credentials.exceptions.domerrors.InUseAttributeError;
import androidx.credentials.exceptions.domerrors.InvalidCharacterError;
import androidx.credentials.exceptions.domerrors.InvalidModificationError;
import androidx.credentials.exceptions.domerrors.InvalidNodeTypeError;
import androidx.credentials.exceptions.domerrors.InvalidStateError;
import androidx.credentials.exceptions.domerrors.NamespaceError;
import androidx.credentials.exceptions.domerrors.NetworkError;
import androidx.credentials.exceptions.domerrors.NoModificationAllowedError;
import androidx.credentials.exceptions.domerrors.NotAllowedError;
import androidx.credentials.exceptions.domerrors.NotFoundError;
import androidx.credentials.exceptions.domerrors.NotReadableError;
import androidx.credentials.exceptions.domerrors.NotSupportedError;
import androidx.credentials.exceptions.domerrors.OperationError;
import androidx.credentials.exceptions.domerrors.OptOutError;
import androidx.credentials.exceptions.domerrors.QuotaExceededError;
import androidx.credentials.exceptions.domerrors.ReadOnlyError;
import androidx.credentials.exceptions.domerrors.SecurityError;
import androidx.credentials.exceptions.domerrors.SyntaxError;
import androidx.credentials.exceptions.domerrors.TimeoutError;
import androidx.credentials.exceptions.domerrors.TransactionInactiveError;
import androidx.credentials.exceptions.domerrors.UnknownError;
import androidx.credentials.exceptions.domerrors.VersionError;
import androidx.credentials.exceptions.domerrors.WrongDocumentError;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import androidx.credentials.internal.FrameworkClassParsingException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CreatePublicKeyCredentialDomException.kt */
@Metadata
/* loaded from: classes.dex */
public final class CreatePublicKeyCredentialDomException extends CreatePublicKeyCredentialException {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION = "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION";
    @NotNull
    private final DomError domError;

    /* compiled from: CreatePublicKeyCredentialDomException.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nCreatePublicKeyCredentialDomException.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreatePublicKeyCredentialDomException.kt\nandroidx/credentials/exceptions/publickeycredential/CreatePublicKeyCredentialDomException$Companion\n+ 2 DomExceptionUtils.kt\nandroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion\n*L\n1#1,61:1\n65#2,72:62\n*S KotlinDebug\n*F\n+ 1 CreatePublicKeyCredentialDomException.kt\nandroidx/credentials/exceptions/publickeycredential/CreatePublicKeyCredentialDomException$Companion\n*L\n51#1:62,72\n*E\n"})
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY})
        @NotNull
        public final CreateCredentialException createFrom(@NotNull String type, @Nullable String str) {
            Object access$generateException;
            Intrinsics.checkNotNullParameter(type, "type");
            try {
                DomExceptionUtils.Companion companion = DomExceptionUtils.Companion;
                CreatePublicKeyCredentialDomException createPublicKeyCredentialDomException = new CreatePublicKeyCredentialDomException(new UnknownError(), null, 2, null);
                if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/" + AbortError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_ABORT_ERROR)) {
                    access$generateException = DomExceptionUtils.Companion.access$generateException(companion, new AbortError(), str, createPublicKeyCredentialDomException);
                } else {
                    if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/" + ConstraintError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_CONSTRAINT_ERROR)) {
                        access$generateException = DomExceptionUtils.Companion.access$generateException(companion, new ConstraintError(), str, createPublicKeyCredentialDomException);
                    } else {
                        if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/" + DataCloneError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DATA_CLONE_ERROR)) {
                            access$generateException = DomExceptionUtils.Companion.access$generateException(companion, new DataCloneError(), str, createPublicKeyCredentialDomException);
                        } else {
                            if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/" + DataError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DATA_ERROR)) {
                                access$generateException = DomExceptionUtils.Companion.access$generateException(companion, new DataError(), str, createPublicKeyCredentialDomException);
                            } else {
                                if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/" + EncodingError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_ENCODING_ERROR)) {
                                    access$generateException = DomExceptionUtils.Companion.access$generateException(companion, new EncodingError(), str, createPublicKeyCredentialDomException);
                                } else {
                                    if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/" + HierarchyRequestError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_HIERARCHY_REQUEST_ERROR)) {
                                        access$generateException = DomExceptionUtils.Companion.access$generateException(companion, new HierarchyRequestError(), str, createPublicKeyCredentialDomException);
                                    } else {
                                        if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/" + InUseAttributeError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_IN_USE_ATTRIBUTE_ERROR)) {
                                            access$generateException = DomExceptionUtils.Companion.access$generateException(companion, new InUseAttributeError(), str, createPublicKeyCredentialDomException);
                                        } else {
                                            if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/" + InvalidCharacterError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_INVALID_CHARACTER_ERROR)) {
                                                access$generateException = DomExceptionUtils.Companion.access$generateException(companion, new InvalidCharacterError(), str, createPublicKeyCredentialDomException);
                                            } else {
                                                if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/" + InvalidModificationError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_INVALID_MODIFICATION_ERROR)) {
                                                    access$generateException = DomExceptionUtils.Companion.access$generateException(companion, new InvalidModificationError(), str, createPublicKeyCredentialDomException);
                                                } else {
                                                    if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/" + InvalidNodeTypeError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_INVALID_NODE_TYPE_ERROR)) {
                                                        access$generateException = DomExceptionUtils.Companion.access$generateException(companion, new InvalidNodeTypeError(), str, createPublicKeyCredentialDomException);
                                                    } else {
                                                        if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/" + InvalidStateError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_INVALID_STATE_ERROR)) {
                                                            access$generateException = DomExceptionUtils.Companion.access$generateException(companion, new InvalidStateError(), str, createPublicKeyCredentialDomException);
                                                        } else {
                                                            if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/" + NamespaceError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_NAMESPACE_ERROR)) {
                                                                access$generateException = DomExceptionUtils.Companion.access$generateException(companion, new NamespaceError(), str, createPublicKeyCredentialDomException);
                                                            } else {
                                                                if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/" + NetworkError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_NETWORK_ERROR)) {
                                                                    access$generateException = DomExceptionUtils.Companion.access$generateException(companion, new NetworkError(), str, createPublicKeyCredentialDomException);
                                                                } else {
                                                                    if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/" + NoModificationAllowedError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_NO_MODIFICATION_ALLOWED_ERROR)) {
                                                                        access$generateException = DomExceptionUtils.Companion.access$generateException(companion, new NoModificationAllowedError(), str, createPublicKeyCredentialDomException);
                                                                    } else {
                                                                        if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/" + NotAllowedError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_NOT_ALLOWED_ERROR)) {
                                                                            access$generateException = DomExceptionUtils.Companion.access$generateException(companion, new NotAllowedError(), str, createPublicKeyCredentialDomException);
                                                                        } else {
                                                                            if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/" + NotFoundError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_NOT_FOUND_ERROR)) {
                                                                                access$generateException = DomExceptionUtils.Companion.access$generateException(companion, new NotFoundError(), str, createPublicKeyCredentialDomException);
                                                                            } else {
                                                                                if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/" + NotReadableError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_NOT_READABLE_ERROR)) {
                                                                                    access$generateException = DomExceptionUtils.Companion.access$generateException(companion, new NotReadableError(), str, createPublicKeyCredentialDomException);
                                                                                } else {
                                                                                    if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/" + NotSupportedError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_NOT_SUPPORTED_ERROR)) {
                                                                                        access$generateException = DomExceptionUtils.Companion.access$generateException(companion, new NotSupportedError(), str, createPublicKeyCredentialDomException);
                                                                                    } else {
                                                                                        if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/" + OperationError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_OPERATION_ERROR)) {
                                                                                            access$generateException = DomExceptionUtils.Companion.access$generateException(companion, new OperationError(), str, createPublicKeyCredentialDomException);
                                                                                        } else {
                                                                                            if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/" + OptOutError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_OPT_OUT_ERROR)) {
                                                                                                access$generateException = DomExceptionUtils.Companion.access$generateException(companion, new OptOutError(), str, createPublicKeyCredentialDomException);
                                                                                            } else {
                                                                                                if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/" + QuotaExceededError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_QUOTA_EXCEEDED_ERROR)) {
                                                                                                    access$generateException = DomExceptionUtils.Companion.access$generateException(companion, new QuotaExceededError(), str, createPublicKeyCredentialDomException);
                                                                                                } else {
                                                                                                    if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/" + ReadOnlyError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_READ_ONLY_ERROR)) {
                                                                                                        access$generateException = DomExceptionUtils.Companion.access$generateException(companion, new ReadOnlyError(), str, createPublicKeyCredentialDomException);
                                                                                                    } else {
                                                                                                        if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/" + SecurityError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_SECURITY_ERROR)) {
                                                                                                            access$generateException = DomExceptionUtils.Companion.access$generateException(companion, new SecurityError(), str, createPublicKeyCredentialDomException);
                                                                                                        } else {
                                                                                                            if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/" + SyntaxError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_SYNTAX_ERROR)) {
                                                                                                                access$generateException = DomExceptionUtils.Companion.access$generateException(companion, new SyntaxError(), str, createPublicKeyCredentialDomException);
                                                                                                            } else {
                                                                                                                if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/" + TimeoutError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_TIMEOUT_ERROR)) {
                                                                                                                    access$generateException = DomExceptionUtils.Companion.access$generateException(companion, new TimeoutError(), str, createPublicKeyCredentialDomException);
                                                                                                                } else {
                                                                                                                    if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/" + TransactionInactiveError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_TRANSACTION_INACTIVE_ERROR)) {
                                                                                                                        access$generateException = DomExceptionUtils.Companion.access$generateException(companion, new TransactionInactiveError(), str, createPublicKeyCredentialDomException);
                                                                                                                    } else {
                                                                                                                        if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/" + UnknownError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_UNKNOWN_ERROR)) {
                                                                                                                            access$generateException = DomExceptionUtils.Companion.access$generateException(companion, new UnknownError(), str, createPublicKeyCredentialDomException);
                                                                                                                        } else {
                                                                                                                            if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/" + VersionError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_VERSION_ERROR)) {
                                                                                                                                access$generateException = DomExceptionUtils.Companion.access$generateException(companion, new VersionError(), str, createPublicKeyCredentialDomException);
                                                                                                                            } else {
                                                                                                                                if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/" + WrongDocumentError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_WRONG_DOCUMENT_ERROR)) {
                                                                                                                                    access$generateException = DomExceptionUtils.Companion.access$generateException(companion, new WrongDocumentError(), str, createPublicKeyCredentialDomException);
                                                                                                                                } else {
                                                                                                                                    throw new FrameworkClassParsingException();
                                                                                                                                }
                                                                                                                            }
                                                                                                                        }
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                return (CreateCredentialException) access$generateException;
            } catch (FrameworkClassParsingException unused) {
                return new CreateCredentialCustomException(type, str);
            }
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CreatePublicKeyCredentialDomException(@NotNull DomError domError) {
        this(domError, null, 2, null);
        Intrinsics.checkNotNullParameter(domError, "domError");
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @NotNull
    public static final CreateCredentialException createFrom(@NotNull String str, @Nullable String str2) {
        return Companion.createFrom(str, str2);
    }

    @NotNull
    public final DomError getDomError() {
        return this.domError;
    }

    public /* synthetic */ CreatePublicKeyCredentialDomException(DomError domError, CharSequence charSequence, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(domError, (i10 & 2) != 0 ? null : charSequence);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreatePublicKeyCredentialDomException(@NotNull DomError domError, @Nullable CharSequence charSequence) {
        super("androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/" + domError.getType(), charSequence);
        Intrinsics.checkNotNullParameter(domError, "domError");
        this.domError = domError;
    }
}
