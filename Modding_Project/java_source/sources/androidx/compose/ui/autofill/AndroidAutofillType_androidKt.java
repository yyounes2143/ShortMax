package androidx.compose.ui.autofill;

import androidx.autofill.HintConstants;
import androidx.compose.ui.ExperimentalComposeUiApi;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.collections.p0;
import kotlin.jvm.internal.Intrinsics;
import ms.k;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidAutofillType.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class AndroidAutofillType_androidKt {
    @NotNull
    private static final HashMap<AutofillType, String> androidAutofillTypes = p0.k(k.a(AutofillType.EmailAddress, HintConstants.AUTOFILL_HINT_EMAIL_ADDRESS), k.a(AutofillType.Username, "username"), k.a(AutofillType.Password, HintConstants.AUTOFILL_HINT_PASSWORD), k.a(AutofillType.NewUsername, HintConstants.AUTOFILL_HINT_NEW_USERNAME), k.a(AutofillType.NewPassword, HintConstants.AUTOFILL_HINT_NEW_PASSWORD), k.a(AutofillType.PostalAddress, HintConstants.AUTOFILL_HINT_POSTAL_ADDRESS), k.a(AutofillType.PostalCode, HintConstants.AUTOFILL_HINT_POSTAL_CODE), k.a(AutofillType.CreditCardNumber, HintConstants.AUTOFILL_HINT_CREDIT_CARD_NUMBER), k.a(AutofillType.CreditCardSecurityCode, HintConstants.AUTOFILL_HINT_CREDIT_CARD_SECURITY_CODE), k.a(AutofillType.CreditCardExpirationDate, HintConstants.AUTOFILL_HINT_CREDIT_CARD_EXPIRATION_DATE), k.a(AutofillType.CreditCardExpirationMonth, HintConstants.AUTOFILL_HINT_CREDIT_CARD_EXPIRATION_MONTH), k.a(AutofillType.CreditCardExpirationYear, HintConstants.AUTOFILL_HINT_CREDIT_CARD_EXPIRATION_YEAR), k.a(AutofillType.CreditCardExpirationDay, HintConstants.AUTOFILL_HINT_CREDIT_CARD_EXPIRATION_DAY), k.a(AutofillType.AddressCountry, HintConstants.AUTOFILL_HINT_POSTAL_ADDRESS_COUNTRY), k.a(AutofillType.AddressRegion, HintConstants.AUTOFILL_HINT_POSTAL_ADDRESS_REGION), k.a(AutofillType.AddressLocality, HintConstants.AUTOFILL_HINT_POSTAL_ADDRESS_LOCALITY), k.a(AutofillType.AddressStreet, HintConstants.AUTOFILL_HINT_POSTAL_ADDRESS_STREET_ADDRESS), k.a(AutofillType.AddressAuxiliaryDetails, HintConstants.AUTOFILL_HINT_POSTAL_ADDRESS_EXTENDED_ADDRESS), k.a(AutofillType.PostalCodeExtended, HintConstants.AUTOFILL_HINT_POSTAL_ADDRESS_EXTENDED_POSTAL_CODE), k.a(AutofillType.PersonFullName, HintConstants.AUTOFILL_HINT_PERSON_NAME), k.a(AutofillType.PersonFirstName, HintConstants.AUTOFILL_HINT_PERSON_NAME_GIVEN), k.a(AutofillType.PersonLastName, HintConstants.AUTOFILL_HINT_PERSON_NAME_FAMILY), k.a(AutofillType.PersonMiddleName, HintConstants.AUTOFILL_HINT_PERSON_NAME_MIDDLE), k.a(AutofillType.PersonMiddleInitial, HintConstants.AUTOFILL_HINT_PERSON_NAME_MIDDLE_INITIAL), k.a(AutofillType.PersonNamePrefix, HintConstants.AUTOFILL_HINT_PERSON_NAME_PREFIX), k.a(AutofillType.PersonNameSuffix, HintConstants.AUTOFILL_HINT_PERSON_NAME_SUFFIX), k.a(AutofillType.PhoneNumber, HintConstants.AUTOFILL_HINT_PHONE_NUMBER), k.a(AutofillType.PhoneNumberDevice, HintConstants.AUTOFILL_HINT_PHONE_NUMBER_DEVICE), k.a(AutofillType.PhoneCountryCode, HintConstants.AUTOFILL_HINT_PHONE_COUNTRY_CODE), k.a(AutofillType.PhoneNumberNational, HintConstants.AUTOFILL_HINT_PHONE_NATIONAL), k.a(AutofillType.Gender, "gender"), k.a(AutofillType.BirthDateFull, HintConstants.AUTOFILL_HINT_BIRTH_DATE_FULL), k.a(AutofillType.BirthDateDay, HintConstants.AUTOFILL_HINT_BIRTH_DATE_DAY), k.a(AutofillType.BirthDateMonth, HintConstants.AUTOFILL_HINT_BIRTH_DATE_MONTH), k.a(AutofillType.BirthDateYear, HintConstants.AUTOFILL_HINT_BIRTH_DATE_YEAR), k.a(AutofillType.SmsOtpCode, HintConstants.AUTOFILL_HINT_SMS_OTP));

    @NotNull
    public static final String getAndroidType(@NotNull AutofillType autofillType) {
        Intrinsics.checkNotNullParameter(autofillType, "<this>");
        String str = androidAutofillTypes.get(autofillType);
        if (str != null) {
            return str;
        }
        throw new IllegalArgumentException("Unsupported autofill type");
    }

    @ExperimentalComposeUiApi
    private static /* synthetic */ void getAndroidAutofillTypes$annotations() {
    }

    @ExperimentalComposeUiApi
    public static /* synthetic */ void getAndroidType$annotations(AutofillType autofillType) {
    }
}
